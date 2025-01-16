@echo off
:: This batch script deletes files older than 10 days from a specified directory.

:: Set the source directory path
set "SOURCE_DIR=E:\DatabaseBackup"

:: Set the number of days
set "DAYS_OLD=10"

:: Display the source directory and the number of days
echo Deleting files older than %DAYS_OLD% days from %SOURCE_DIR%

:: Delete files older than the specified number of days
forfiles /p "%SOURCE_DIR%" /s /m *.* /d -%DAYS_OLD% /c "cmd /c del @path"

:: Display completion message
echo Files older than %DAYS_OLD% days have been deleted from %SOURCE_DIR%

