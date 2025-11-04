import { readdir, readFile } from 'fs/promises';
import { join, resolve } from 'path';

const fhirServerUrl = 'https://cdr.fhirlab.net/fhir';
const resourcesDir = resolve(process.cwd(), 'fsh-generated', 'resources');
const excludedResourceTypes = [
  'StructureDefinition',
  'Questionnaire',
  'CodeSystem',
  'ValueSet',
  'SearchParameter',
  'StructureMap',
  'Library',
  'ImplementationGuide', // Added this
];

// This order is important to resolve dependencies between resources
const uploadOrder = [
    'Location',
    'Organization',
    'Practitioner',
    'Patient',
    'HealthcareService',
    'Coverage',
    'Encounter',
    'AllergyIntolerance',
    'Condition',
    'MedicationStatement',
    'ServiceRequest',
    'Procedure',
    'Observation',
    'DocumentReference',
    'Task',
    'Composition',
    'Claim',
    'Bundle',
];


async function uploadExamples() {
  console.log(`Uploading examples to ${fhirServerUrl}`);
  console.log(`Reading from ${resourcesDir}`);

  try {
    const files = await readdir(resourcesDir);
    const resourcesByType = new Map<string, any[]>();

    // Read and group all resources by type
    for (const file of files) {
      if (!file.endsWith('.json')) {
        continue;
      }

      const filePath = join(resourcesDir, file);
      const fileContent = await readFile(filePath, 'utf-8');
      const resource = JSON.parse(fileContent);

      if (excludedResourceTypes.includes(resource.resourceType)) {
        continue;
      }
      
      if (!resource.id) {
        console.log(`Skipping resource with no id: ${file}`);
        continue;
      }

      if (!resourcesByType.has(resource.resourceType)) {
        resourcesByType.set(resource.resourceType, []);
      }
      resourcesByType.get(resource.resourceType)!.push(resource);
    }

    // Upload resources in the specified order
    for (const resourceType of uploadOrder) {
        const resourcesToUpload = resourcesByType.get(resourceType);
        if (!resourcesToUpload || resourcesToUpload.length === 0) {
            continue;
        }

        console.log(`Uploading ${resourcesToUpload.length} ${resourceType}(s)...`);

        const uploadPromises = resourcesToUpload.map(resource => {
            const url = `${fhirServerUrl}/${resource.resourceType}/${resource.id}`;
            return fetch(url, {
                method: 'PUT',
                headers: {
                    'Content-Type': 'application/fhir+json',
                },
                body: JSON.stringify(resource),
            }).then(response => {
                if (!response.ok) {
                    return response.text().then(responseBody => {
                        console.error(`Failed to upload ${resource.resourceType}/${resource.id}: ${response.status} ${response.statusText}`, responseBody);
                    });
                } else {
                    console.log(`Successfully uploaded ${resource.resourceType}/${resource.id}`);
                }
            }).catch(error => {
                console.error(`Error uploading ${resource.resourceType}/${resource.id}:`, error);
            });
        });

        await Promise.all(uploadPromises);
        console.log(`Finished uploading ${resourceType}(s).`);
        resourcesByType.delete(resourceType); // Remove uploaded resources from map
    }

    // Upload any remaining resource types that were not in the uploadOrder list
    for (const [resourceType, resourcesToUpload] of resourcesByType.entries()) {
        if (resourcesToUpload.length === 0) {
            continue;
        }
        console.log(`Uploading ${resourcesToUpload.length} remaining ${resourceType}(s)...`);

        const uploadPromises = resourcesToUpload.map(resource => {
            const url = `${fhirServerUrl}/${resource.resourceType}/${resource.id}`;
            return fetch(url, {
                method: 'PUT',
                headers: {
                    'Content-Type': 'application/fhir+json',
                },
                body: JSON.stringify(resource),
            }).then(response => {
                if (!response.ok) {
                    return response.text().then(responseBody => {
                        console.error(`Failed to upload ${resource.resourceType}/${resource.id}: ${response.status} ${response.statusText}`, responseBody);
                    });
                } else {
                    console.log(`Successfully uploaded ${resource.resourceType}/${resource.id}`);
                }
            }).catch(error => {
                console.error(`Error uploading ${resource.resourceType}/${resource.id}:`, error);
            });
        });

        await Promise.all(uploadPromises);
        console.log(`Finished uploading ${resourceType}(s).`);
    }


    console.log('Finished uploading all examples.');

  } catch (error) {
    if (error.code === 'ENOENT') {
        console.error('Error: The directory fsh-generated/resources does not exist. Please run the build script first.');
    } else {
        console.error('Error reading resources directory:', error);
    }
  }
}

uploadExamples();
