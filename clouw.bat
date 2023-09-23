@echo off
title Clouw
set version=0.00a

:checkForAdmin
>nul 2>&1 net session
if %errorlevel% == 0 (
    set admin=true
) else (
    set admin=false
)
:checkForUpdate
curl -L "https://raw.githubusercontent.com/JikUy/Clouw/main/versiondata" --ssl-no-revoke --output "versiondata.clw" --silent

cls
set /p serverVersion=<versiondata.clw
cls

rem Supprimez le caractère de nouvelle ligne en utilisant une substitution de chaîne pour obtenir la version correcte
set serverVersion=!serverVersion:~8!
cls

curl -L "https://raw.githubusercontent.com/JikUy/Clouw/main/version" --ssl-no-revoke --output "version.txt" --silent
set /p serverVersion=<version.txt
cls

rem Supprimez le caractère de nouvelle ligne en utilisant une substitution de chaîne pour obtenir la version correcte
set serverVersion=!serverVersion:~8!
cls

ren version.txt version.clw
cls

echo Your version:
echo %version%
echo Latest version:
type version.clw
echo Started as admin:
echo %admin%
pause
