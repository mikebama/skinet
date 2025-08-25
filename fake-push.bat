
@REM # Run act inside Docker (uses Docker Hub image by default)
@REM # Run this script from a Unix-like shell (Git Bash / WSL). In PowerShell use the PowerShell command shown below.
@REM docker run --rm -v "$(pwd)":/github/workspace --env-file .env nektos/act:latest push

@REM # PowerShell alternative if you prefer to run directly from PowerShell:
docker run --rm -v ./:/github/workspace --env-file .env efrecon/act:v0.2.80 push