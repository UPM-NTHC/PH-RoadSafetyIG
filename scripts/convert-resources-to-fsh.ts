#!/usr/bin/env bun

import { spawn } from "node:child_process";
import { existsSync } from "node:fs";
import {
	mkdir,
	readdir,
	rm,
	stat,
	copyFile,
} from "node:fs/promises";
import path from "node:path";
import { fileURLToPath } from "node:url";
import readline from "node:readline/promises";
import { stdin, stdout } from "node:process";

const __filename = fileURLToPath(import.meta.url);
const __dirname = path.dirname(__filename);
const repoRoot = path.resolve(__dirname, "..");
const resourcesDir = path.join(repoRoot, "input", "resources");
const generatedTerminologyDir = path.join(
	repoRoot,
	"input",
	"fsh",
	"generated-terminology",
);
const aliasFile = path.join(repoRoot, "input", "fsh", "aliases.fsh");
const previewRoot = path.join(repoRoot, "temp", "gofsh-preview");

type MenuChoice = "test" | "all" | "exit";

async function main() {
	const rl = readline.createInterface({
		input: stdin,
		output: stdout,
		terminal: true,
	});

	try {
		await ensureResourcesDir();
		const files = await listResourceFiles();
		if (files.length === 0) {
			console.error(
				"No JSON resources found in input/resources. Nothing to convert.",
			);
			return process.exitCode = 1;
		}

		const choice = await promptForMenuChoice(rl);
		if (choice === "exit") {
			console.log("Aborted by user.");
			return;
		}

		if (choice === "test") {
			await handleTestConvert(rl, files);
			return;
		}

		await handleFullConversion(rl);
	} finally {
		rl.close();
	}
}

async function ensureResourcesDir() {
	try {
		const statResult = await stat(resourcesDir);
		if (!statResult.isDirectory()) {
			throw new Error("input/resources exists but is not a directory.");
		}
	} catch (err) {
		if ((err as NodeJS.ErrnoException).code === "ENOENT") {
			throw new Error("input/resources directory does not exist.");
		}
		throw err;
	}
}

async function listResourceFiles(): Promise<string[]> {
	const entries = await readdir(resourcesDir);
	return entries
		.filter((entry) => entry.toLowerCase().endsWith(".json"))
		.sort((a, b) => a.localeCompare(b));
}

async function promptForMenuChoice(rl: readline.Interface): Promise<MenuChoice> {
	console.log("\nGoFSH conversion options:");
	console.log("1) Test convert a single resource");
	console.log("2) Convert all resources");
	console.log("3) Exit without changes");

	while (true) {
		const answer = (await rl.question("Select an option [1-3]: ")).trim();
		if (["1", "test"].includes(answer.toLowerCase())) {
			return "test";
		}
		if (["2", "all"].includes(answer.toLowerCase())) {
			return "all";
		}
		if (["3", "exit", "q", "quit"].includes(answer.toLowerCase())) {
			return "exit";
		}
		console.log("Invalid choice. Please enter 1, 2, or 3.");
	}
}

async function handleTestConvert(rl: readline.Interface, files: string[]) {
	console.log("\nAvailable JSON resources:");
	files.forEach((file, index) => {
		console.log(`${index + 1}) ${file}`);
	});

	let selection: string | null = null;
	while (!selection) {
		const answer = (await rl.question(
			"Enter the number or exact filename to preview: ",
		)).trim();
		const numeric = Number.parseInt(answer, 10);
		if (!Number.isNaN(numeric) && numeric >= 1 && numeric <= files.length) {
			selection = files[numeric - 1];
			break;
		}
		if (files.includes(answer)) {
			selection = answer;
			break;
		}
		console.log("Selection not recognized. Try again.");
	}

	if (!selection) {
		throw new Error("Unable to resolve selection.");
	}

	const previewInputDir = path.join(previewRoot, "input");
	const previewOutputDir = path.join(previewRoot, "output");
	await ensureEmptyDir(previewInputDir);
	await ensureEmptyDir(previewOutputDir);

	const sourceFile = path.join(resourcesDir, selection);
	const stagedFile = path.join(previewInputDir, selection);
	await copyFile(sourceFile, stagedFile);

	console.log(
		`\nRunning GoFSH preview for ${selection} -> ${path.relative(repoRoot, previewOutputDir)}`,
	);
	await runGoFSH(previewInputDir, previewOutputDir);

	console.log("\nPreview completed. Review generated FSH in:");
	console.log(`  ${path.relative(repoRoot, previewOutputDir)}`);
	console.log(
		"Once satisfied, re-run this script and choose option 2 to convert all resources.",
	);
}

async function handleFullConversion(rl: readline.Interface) {
	await ensureDir(generatedTerminologyDir);

	if (!(await isDirectoryEmpty(generatedTerminologyDir))) {
		console.log(
			`The target directory (${path.relative(repoRoot, generatedTerminologyDir)}) is not empty.`,
		);
		const confirmClear = await promptYesNo(
			rl,
			"Clear existing generated terminology before continuing?",
			false,
		);
		if (!confirmClear) {
			console.log("Aborted by user.");
			return;
		}
		await ensureEmptyDir(generatedTerminologyDir);
	}

	console.log("\nRunning GoFSH on input/resources...");
	await runGoFSH(resourcesDir, generatedTerminologyDir);

	console.log("\nConversion completed. Generated FSH available in:");
	console.log(`  ${path.relative(repoRoot, generatedTerminologyDir)}`);

	if (!(await directoryExists(resourcesDir))) {
		return;
	}

	const removeResources = await promptYesNo(
		rl,
		"Remove the original input/resources directory?",
		false,
	);
	if (removeResources) {
		await rm(resourcesDir, { recursive: true, force: true });
		console.log("Removed input/resources as requested.");
	} else {
		console.log("input/resources preserved.");
	}
}

async function ensureDir(dirPath: string) {
	await mkdir(dirPath, { recursive: true });
}

async function ensureEmptyDir(dirPath: string) {
	await rm(dirPath, { recursive: true, force: true });
	await mkdir(dirPath, { recursive: true });
}

async function isDirectoryEmpty(dirPath: string): Promise<boolean> {
	try {
		const entries = await readdir(dirPath);
		return entries.length === 0;
	} catch (err) {
		if ((err as NodeJS.ErrnoException).code === "ENOENT") {
			return true;
		}
		throw err;
	}
}

async function directoryExists(dirPath: string): Promise<boolean> {
	try {
		const stats = await stat(dirPath);
		return stats.isDirectory();
	} catch (err) {
		if ((err as NodeJS.ErrnoException).code === "ENOENT") {
			return false;
		}
		throw err;
	}
}

async function promptYesNo(
	rl: readline.Interface,
	message: string,
	defaultValue: boolean,
): Promise<boolean> {
	const suffix = defaultValue ? "[Y/n]" : "[y/N]";
	while (true) {
		const answer = (await rl.question(`${message} ${suffix} `)).trim().toLowerCase();
		if (!answer) {
			return defaultValue;
		}
		if (["y", "yes"].includes(answer)) {
			return true;
		}
		if (["n", "no"].includes(answer)) {
			return false;
		}
		console.log("Please respond with yes or no.");
	}
}

async function runGoFSH(inputDir: string, outputDir: string) {
	const args = buildGoFSHArgs(inputDir, outputDir);
	const candidates = buildCommandCandidates();

	for (const candidate of candidates) {
		try {
			await spawnCommand(candidate.command, [...candidate.args, ...args]);
			return;
		} catch (err) {
			if ((err as NodeJS.ErrnoException).code === "ENOENT") {
				continue;
			}
			throw err;
		}
	}

	throw new Error(
		"Unable to run GoFSH. Install it globally (`npm install -g gofsh`) or set GOFSH_BIN to its path.",
	);
}

function buildGoFSHArgs(inputDir: string, outputDir: string): string[] {
	const args = [
		inputDir,
		"-o",
		outputDir,
		"--style",
		"file-per-definition",
		"--indent",
	];

	if (existsSync(aliasFile)) {
		args.push("--alias-file", aliasFile);
	}

	const logLevel = process.env.GOFSH_LOG_LEVEL?.trim() ?? "verbose";
	args.push("--log-level", logLevel);

	return args;
}

function buildCommandCandidates(): Array<{ command: string; args: string[] }> {
	const envBin = process.env.GOFSH_BIN?.trim();
	if (envBin) {
		const parts = envBin.split(/\s+/);
		return [{ command: parts[0]!, args: parts.slice(1) }];
	}

	const candidates: Array<{ command: string; args: string[] }> = [];

	const localBins = [
		path.join(repoRoot, "node_modules", ".bin", "gofsh"),
		path.join(repoRoot, "node_modules", ".bin", "gofsh.cmd"),
		path.join(repoRoot, "node_modules", ".bin", "gofsh.ps1"),
	];

	for (const localBin of localBins) {
		if (existsSync(localBin)) {
			candidates.push({ command: localBin, args: [] });
			break;
		}
	}

	candidates.push(
		{ command: "gofsh", args: [] },
		{ command: "bun", args: ["x", "gofsh"] },
		{ command: "bunx", args: ["gofsh"] },
		{ command: "npx", args: ["-y", "gofsh"] },
	);

	return candidates;
}

function spawnCommand(command: string, args: string[]): Promise<void> {
	console.log(
		`\n[GoFSH] Executing: ${[command, ...args].map(quoteIfNeeded).join(" ")}`,
	);

	return new Promise((resolve, reject) => {
		const child = spawn(command, args, {
			stdio: "inherit",
			windowsHide: true,
		});

		child.once("error", (error) => {
			reject(error);
		});

		child.once("close", (code) => {
			if (code === 0) {
				resolve();
			} else {
				reject(
					new Error(`${command} exited with code ${code ?? "unknown"}.`),
				);
			}
		});
	});
}

function quoteIfNeeded(segment: string): string {
	return segment.includes(" ") ? `"${segment}"` : segment;
}

main().catch((error: unknown) => {
	console.error("\nGoFSH conversion failed:");
	if (error instanceof Error) {
		console.error(error.message);
	} else {
		console.error(error);
	}
	process.exitCode = 1;
});
