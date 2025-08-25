#!/bin/bash

# Run act inside Docker (uses Docker Hub image by default)
# Run this script from a Unix-like shell (Git Bash / WSL). In PowerShell use the PowerShell command shown below.
docker run --rm -v "$(pwd)":/github/workspace --env-file .env nektos/act:latest push

# PowerShell alternative if you prefer to run directly from PowerShell:
# docker run --rm -v ${PWD}:/github/workspace --env-file .env nektos/act:latest push