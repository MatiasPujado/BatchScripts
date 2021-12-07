@ECHO OFF 
:: This batch file will fix the current install and the OS Image.
TITLE Fixing Win 10
ECHO.
:: Fixing issues with the system image.
ECHO ==============================
ECHO Restoring OS Image Health 
ECHO ==============================
DISM /Online /Cleanup-Image /RestoreHealth
ECHO.
ECHO.
:: Scan the integrity and restores missing or corrupted system files with working replacements.
ECHO ==============================
ECHO Fixing the current setup. 
ECHO ==============================
SFC /scannow
findstr /c:"[SR]" %windir%\Logs\CBS\CBS.log > E:\SoftwareProjects\BatFiles\SFCLogs\sfclogs.txt"
PAUSE
:: Links
:: https://www.windowscentral.com/how-create-and-run-batch-file-windows-10
:: https://www.windowscentral.com/how-use-dism-command-line-utility-repair-windows-10-image
:: https://www.windowscentral.com/how-use-sfc-scannow-command-fix-problems-windows-10