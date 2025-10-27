#!/usr/bin/env bun
/**
 * Render PNG previews for PDFs located in input/images/downloads.
 *
 * Usage examples:
 *   bun scripts/render-pdf-previews.ts
 *   bun scripts/render-pdf-previews.ts --dpi=300
 *   bun scripts/render-pdf-previews.ts "Run Report.pdf"
 *
 * The script creates PNG pages in input/images/<slug>/page-XX.png
 * where <slug> is derived from the PDF filename. Existing images are
 * overwritten unless --skip-existing is supplied.
 */

import { mkdir, readdir, rm, stat } from "node:fs/promises";
import { existsSync } from "node:fs";
import path from "node:path";
import process from "node:process";
import * as pdfjsLib from "pdfjs-dist/legacy/build/pdf.mjs";
import { createCanvas } from "@napi-rs/canvas";

type CLIOptions = {
  dpi: number;
  force: boolean;
  skipExisting: boolean;
  filters: string[];
};

const PROJECT_ROOT = path.resolve(import.meta.dir, "..");
const DOWNLOADS_DIR = path.join(PROJECT_ROOT, "input", "images", "downloads");
const IMAGES_ROOT = path.join(PROJECT_ROOT, "input", "images");

const DEFAULT_DPI = 160;

async function main() {
  const options = parseArgs(process.argv.slice(2));
  const pdfFiles = await discoverPdfFiles(options.filters);

  if (pdfFiles.length === 0) {
    console.log("No PDF files found in input/images/downloads.");
    return;
  }

  console.log(
    `Rendering ${pdfFiles.length} PDF${pdfFiles.length === 1 ? "" : "s"} at ${
      options.dpi
    } DPI...`,
  );

  for (const pdfPath of pdfFiles) {
    await processPdf(pdfPath, options);
  }

  console.log("Done.");
}

function parseArgs(argv: string[]): CLIOptions {
  const options: CLIOptions = {
    dpi: DEFAULT_DPI,
    force: false,
    skipExisting: false,
    filters: [],
  };

  for (const arg of argv) {
    if (arg.startsWith("--dpi=")) {
      const dpi = Number.parseInt(arg.split("=")[1] ?? "", 10);
      if (!Number.isFinite(dpi) || dpi <= 0) {
        throw new Error(`Invalid DPI value provided: "${arg}"`);
      }
      options.dpi = dpi;
    } else if (arg === "--force") {
      options.force = true;
    } else if (arg === "--skip-existing") {
      options.skipExisting = true;
    } else if (arg) {
      options.filters.push(arg.toLowerCase());
    }
  }

  if (options.force && options.skipExisting) {
    throw new Error("Use either --force or --skip-existing, not both.");
  }

  if (process.env.PDF_DPI) {
    const envDpi = Number.parseInt(process.env.PDF_DPI, 10);
    if (Number.isFinite(envDpi) && envDpi > 0) {
      options.dpi = envDpi;
    }
  }

  return options;
}

async function discoverPdfFiles(filters: string[]): Promise<string[]> {
  const entries = await readdir(DOWNLOADS_DIR, { withFileTypes: true });
  const pdfs = entries
    .filter((entry) => entry.isFile() && entry.name.toLowerCase().endsWith(".pdf"))
    .map((entry) => path.join(DOWNLOADS_DIR, entry.name));

  if (filters.length === 0) {
    return pdfs;
  }

  return pdfs.filter((filePath) => {
    const fileName = path.basename(filePath).toLowerCase();
    return filters.some((filter) => fileName.includes(filter));
  });
}

function slugifyPdfName(pdfFile: string): string {
  const base = path.basename(pdfFile, path.extname(pdfFile));
  return base
    .trim()
    .toLowerCase()
    .replace(/[^a-z0-9]+/g, "-")
    .replace(/^-+|-+$/g, "");
}

async function processPdf(pdfPath: string, options: CLIOptions) {
  const fileName = path.basename(pdfPath);
  const slug = slugifyPdfName(pdfPath);
  const outputDir = path.join(IMAGES_ROOT, slug);

  if (options.force && existsSync(outputDir)) {
    await rm(outputDir, { recursive: true, force: true });
  }

  await mkdir(outputDir, { recursive: true });

  const fileInfo = await stat(pdfPath);
  console.log(`\n→ ${fileName} (${(fileInfo.size / 1024).toFixed(1)} KiB)`);

  const data = await Bun.file(pdfPath).arrayBuffer();
  const loadingTask = pdfjsLib.getDocument({ data, disableWorker: true });
  const pdf = await loadingTask.promise;
  const totalPages = pdf.numPages;

  const scale = options.dpi / 72; // PDF user units are 1/72 inch.

  for (let pageNumber = 1; pageNumber <= totalPages; pageNumber += 1) {
    const page = await pdf.getPage(pageNumber);
    const viewport = page.getViewport({ scale });
    const width = Math.floor(viewport.width);
    const height = Math.floor(viewport.height);

    const canvas = createCanvas(width, height);
    const context = canvas.getContext("2d");

    context.save();
    context.fillStyle = "#ffffff";
    context.fillRect(0, 0, width, height);
    context.restore();

    await page
      .render({
        canvasContext: context as unknown as any,
        viewport,
      })
      .promise;

    const outputFile = path.join(
      outputDir,
      `${slug}-page-${String(pageNumber).padStart(2, "0")}.png`,
    );

    if (!options.force && options.skipExisting && existsSync(outputFile)) {
      console.log(`  · Page ${pageNumber}/${totalPages}: skipped (already exists)`);
      continue;
    }

    await Bun.write(outputFile, canvas.toBuffer("image/png"));
    console.log(`  · Page ${pageNumber}/${totalPages}: ${path.basename(outputFile)}`);
  }
}

main().catch((error) => {
  console.error(error);
  process.exitCode = 1;
});
