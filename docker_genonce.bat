@echo off
REM docker_genonce.bat - Run the IG generation in Docker

echo Building and running the FHIR IG Generator in Docker...
docker-compose up --build --abort-on-container-exit

if %ERRORLEVEL% EQU 0 (
    echo Generation complete. Output is in the output/ directory.
) else (
    echo Docker build or run failed.
    exit /b %ERRORLEVEL%
)