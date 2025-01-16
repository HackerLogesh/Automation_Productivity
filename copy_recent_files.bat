@echo off
:: This batch script copies files modified in the last day from a source directory to a destination directory.
:: It skips files that have already been copied.

:: Set the source directory path
set "SOURCE_DIR=E:\DatabaseBackup"

:: Set the destination directory path
set "DEST_DIR=D:\DatabaseBackup"

:: Get the current date and the previous day's date using PowerShell
for /f "delims=" %%i in ('powershell -NoProfile -Command "Get-Date -Format yyyyMMdd"') do set TODAY=%%i
for /f "delims=" %%i in ('powershell -NoProfile -Command "Get-Date (Get-Date).AddDays(-1) -Format yyyyMMdd"') do set YESTERDAY=%%i

:: Display the source and destination directories
echo Copying files modified between %YESTERDAY% and %TODAY% from %SOURCE_DIR% to %DEST_DIR%

:: Create destination directory if it doesn't exist
if not exist "%DEST_DIR%" mkdir "%DEST_DIR%"

:: Copy files modified between the current date and the previous day using PowerShell
powershell -NoProfile -Command ^
    "Get-ChildItem -Path '%SOURCE_DIR%' -Recurse | Where-Object { $_.LastWriteTime -ge (Get-Date).AddDays(-1) -and !(Test-Path -Path (Join-Path -Path '%DEST_DIR%' -ChildPath $_.Name)) } | ForEach-Object { Copy-Item -Path $_.FullName -Destination '%DEST_DIR%' -Force }"

:: Display completion message
echo Files modified between %YESTERDAY% and %TODAY% have been copied from %SOURCE_DIR% to %DEST_DIR%

