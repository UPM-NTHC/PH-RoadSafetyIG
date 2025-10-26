@echo off
setlocal enabledelayedexpansion

set "SCRIPT_DIR=%~dp0"
pushd "%SCRIPT_DIR%.."

where bun >nul 2>nul
if errorlevel 1 (
  echo Bun runtime not found. Please install Bun and ensure it is on PATH.
  popd
  exit /b 1
)

if exist "bun.lockb" (
  echo Using existing Bun lockfile...
) else (
  echo Installing dependencies ^(this may take a moment^)
)

bun install
if errorlevel 1 (
  echo Failed to install Bun dependencies.
  popd
  exit /b 1
)

echo(
echo Generating PDF preview images...
bun run render-pdf-previews %*

set "EXITCODE=%ERRORLEVEL%"
popd
exit /b %EXITCODE%
