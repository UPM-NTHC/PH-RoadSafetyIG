# Docker Setup for PH Road Safety IG Generation

This setup allows you to build and run the FHIR Implementation Guide publisher in a Docker container.

## Prerequisites

- Docker Desktop installed
- Docker Compose installed

## Docker Configuration Updates

The Docker setup (`Dockerfile` and `docker-compose.yml`) has been updated to align with the GitHub Actions CI/CD pipeline. This ensures consistency between local development and automated builds.

Key changes include:
- **Base Image:** The `Dockerfile` now uses `hl7fhir/ig-publisher-base:latest` as its base image, mirroring the GitHub workflow. This image comes pre-configured with the necessary Java environment and other tools required by the FHIR IG Publisher.
- **Simplified Build Process:** The `Dockerfile` directly handles downloading the `publisher.jar` and executing the FHIR IG Publisher, streamlining the build process within the container.
- **`docker-compose.yml`:** The `docker-compose.yml` has been simplified to leverage the `CMD` instruction defined in the `Dockerfile`, ensuring that `docker-compose up` directly triggers the IG publication process.

## Build and Run

To run the IG generation once:

```bash
docker-compose up --build
```

The output will be available in the `output` directory after the container completes.

## Alternative - Run without Compose

To build the container:

```bash
docker build -t ph-roadsafety-ig .
```

To run the container once:

```bash
docker run --rm -v $(pwd):/app ph-roadsafety-ig
```

## Understanding Ignore Files: `.dockerignore` vs. `_config.yml` (exclude)

It's important to understand the different roles of ignore files in this project:

*   **`.dockerignore`:** This file specifies files and directories that should be excluded when building the Docker image. Its primary purpose is to keep the Docker image size small and to prevent unnecessary or sensitive files from being copied into the container during the build process. For example, it might exclude `node_modules`, `.git` directories, or temporary build artifacts.

*   **`_config.yml` (`exclude` directive):** This file is part of the Jekyll static site generator configuration. The `exclude` directive within `_config.yml` tells Jekyll which files and directories to ignore *when generating the static website*. This is useful for preventing source files, drafts, or other non-public content from being included in the final published IG website.

In summary:
-   `.dockerignore` affects what goes *into* the Docker image.
-   `_config.yml`'s `exclude` affects what goes *into* the final generated website by Jekyll.

## Notes

- The container will automatically download the FHIR IG Publisher if not present
- Generated files will be accessible in your local output directory due to volume mounting
- The script will attempt to connect to external servers (tx.fhir.org), so internet connectivity is required for online validation