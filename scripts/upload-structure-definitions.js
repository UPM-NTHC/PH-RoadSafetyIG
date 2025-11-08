const fs = require('fs');
const path = require('path');
const axios = require('axios');

/**
 * Script to scan for Structure Definitions in ./fsh-generated/resources and upload them to FHIR servers
 * This version only deletes conflicting StructureDefinitions, leaving others untouched
 */

async function scanStructureDefinitions() {
    const resourcesDir = './fsh-generated/resources';
    const structureDefFiles = fs.readdirSync(resourcesDir)
        .filter(file => file.startsWith('StructureDefinition-') && file.endsWith('.json'));
    
    const structureDefinitions = [];
    
    for (const file of structureDefFiles) {
        const filePath = path.join(resourcesDir, file);
        const content = fs.readFileSync(filePath, 'utf8');
        const structureDef = JSON.parse(content);
        structureDefinitions.push(structureDef);
    }
    
    return structureDefinitions;
}

async function getStructureDefinitionSummary(serverUrl) {
    try {
        const response = await axios.get(`${serverUrl}/StructureDefinition?_summary=true`);
        return response.data.entry || [];
    } catch (error) {
        console.error(`Error fetching StructureDefinition summary from ${serverUrl}:`, error.message);
        return [];
    }
}

async function deleteStructureDefinition(serverUrl, id) {
    try {
        await axios.delete(`${serverUrl}/StructureDefinition/${id}`);
        console.log(`Deleted StructureDefinition with id ${id} from ${serverUrl}`);
    } catch (error) {
        console.error(`Error deleting StructureDefinition with id ${id} from ${serverUrl}:`, error.message);
    }
}

async function uploadStructureDefinition(serverUrl, structureDef) {
    try {
        // Check if there's already a StructureDefinition with this URL on the server
        const summary = await getStructureDefinitionSummary(serverUrl);
        const existingDefs = summary.filter(entry => 
            entry.resource && entry.resource.url === structureDef.url
        );
        
        if (existingDefs.length > 0) {
            // If there's already a StructureDefinition with this URL, update it using its existing ID
            const existingId = existingDefs[0].resource.id;
            const response = await axios.put(`${serverUrl}/StructureDefinition/${existingId}`, structureDef, {
                headers: {
                    'Content-Type': 'application/fhir+json'
                }
            });
            console.log(`Updated StructureDefinition with id ${existingId} (URL: ${structureDef.url}) on ${serverUrl}`);
            return response.data;
        } else {
            // If no matching URL exists, create a new one
            const response = await axios.post(`${serverUrl}/StructureDefinition`, structureDef, {
                headers: {
                    'Content-Type': 'application/fhir+json'
                }
            });
            console.log(`Created StructureDefinition with id ${structureDef.id} (URL: ${structureDef.url}) on ${serverUrl}`);
            return response.data;
        }
    } catch (error) {
        console.error(`Error uploading StructureDefinition to ${serverUrl}:`, error.message);
        if (error.response) {
            console.error('Response data:', error.response.data);
            console.error('Response status:', error.response.status);
            console.error('Response headers:', error.response.headers);
        }
        throw error;
    }
}

async function deleteConflictingResources(serverUrl, structureDefinitions) {
    console.log(`Checking for conflicting resources on ${serverUrl}...`);
    
    const summary = await getStructureDefinitionSummary(serverUrl);
    const urlsToUpload = new Set(structureDefinitions.map(sd => sd.url));
    
    // Find only the StructureDefinitions that have the same URLs as our project's StructureDefinitions
    for (const entry of summary) {
        if (entry.resource && urlsToUpload.has(entry.resource.url)) {
            console.log(`Found conflicting resource: ${entry.resource.id} (URL: ${entry.resource.url})`);
            await deleteStructureDefinition(serverUrl, entry.resource.id);
        }
    }
}

async function main() {
    console.log('Scanning for Structure Definitions...');
    
    const structureDefinitions = await scanStructureDefinitions();
    console.log(`Found ${structureDefinitions.length} Structure Definitions`);
    
    if (structureDefinitions.length === 0) {
        console.log('No Structure Definitions found to upload.');
        return;
    }
    
    const servers = [
        'https://tx.fhirlab.net/fhir',
        'https://cdr.fhirlab.net/fhir'
    ];
    
    for (const serverUrl of servers) {
        console.log(`\nProcessing server: ${serverUrl}`);
        
        // If this is the TX server, we'll delete only the conflicting resources first
        if (serverUrl.includes('tx.fhirlab.net')) {
            await deleteConflictingResources(serverUrl, structureDefinitions);
        }
        
        for (const structureDef of structureDefinitions) {
            console.log(`Processing StructureDefinition: ${structureDef.id} (URL: ${structureDef.url})`);
            
            try {
                await uploadStructureDefinition(serverUrl, structureDef);
            } catch (error) {
                console.error(`Failed to upload StructureDefinition ${structureDef.id} to ${serverUrl}:`, error.message);
            }
        }
    }
    
    console.log('\nUpload process completed.');
}

// Run the script
main().catch(error => {
    console.error('Script execution failed:', error);
    process.exit(1);
});