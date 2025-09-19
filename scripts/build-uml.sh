#!/usr/bin/env bash
# Auto-generated helper script: build-uml.sh
# Purpose: Cross-platform build wrapper (Unix/macOS variant) to generate UML intros and run the IG Publisher.
# Safe to commit. Requires Node 18+ and Java for IG Publisher.
# Behavior:
# - Runs `node scripts/generate-uml-intros.js`
# - Then runs IG Publisher:
#     - If ./_genonce.sh exists, runs ./_genonce.sh
#     - Else runs: java -jar ./input-cache/publisher/org.hl7.fhir.publisher.jar -ig .
# - Exits non-zero on failure.

set -euo pipefail


echo "Generating UML intros..."
node ./scripts/generate-uml-intros.js

if [[ -f "./_genonce.sh" ]]; then
  echo "Running IG Publisher via _genonce.sh..."
  bash ./_genonce.sh
else
  JAR_PATH="./input-cache/publisher/org.hl7.fhir.publisher.jar"
  if [[ ! -f "$JAR_PATH" ]]; then
    echo "Publisher JAR not found at $JAR_PATH" >&2
    exit 1
  fi
  echo "Running IG Publisher via Java JAR..."
  java -jar "$JAR_PATH" -ig .
fi

# Copy UML diagrams to output/diagrams
if [[ -d "./temp/diagrams" ]]; then
  mkdir -p ./output/diagrams
  cp -f ./temp/diagrams/*.svg ./output/diagrams/ 2>/dev/null || true
fi

echo "Build completed successfully."
