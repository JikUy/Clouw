@echo off
:check_Files
if exist data (
    goto :wf
) else (
    echo ERROR FILE MISSING: DATA
    echo.
    pause
    goto :check_files
)
if exist icons (
    goto :wf
) else (
    echo ERROR FILE MISSING: ICONS
    echo.
    pause
    goto :check_files
)
if exist version2.clw (
    goto :wf
) else (
    echo ERROR FILE MISSING: VERSION2.CLW
    echo.
    pause
    goto :check_files
)
if exist icons/clouw_pride.png (
    goto :wf
) else (
    echo ERROR FILE MISSING: ICONS/CLOUW_PRIDE.PNG
    echo.
    pause
    goto :check_files
)
if exist icons/clouw1.png (
    goto :wf
) else (
    echo ERROR FILE MISSING: ICONS/CLOUW1.PNG
    echo.
    pause
    goto :check_files
)
if exist data/version.clw (
    goto :wf
) else (
    echo ERROR FILE MISSING: DATA/VERSION.CLW
    echo.
    pause
    goto :check_files
)
if exist data/version.txt (
    goto :wf
) else (
    echo ERROR FILE MISSING: DATA/VERSION.TXT
    echo.
    pause
    goto :check_files
)
if exist data/versiondata.clw (
    goto :wf
) else (
    echo ERROR FILE MISSING: DATA/VERSIONDATA.CLW
    echo.
    pause
    goto :check_files
)
REM -------------------------------------------------------------------start-
:wf
mode CON: cols=100 lines=30
title Clouw
set version=0.00a
set download=https://codeload.github.com/JikUy/Clouw/zip/refs/heads/main
set "creator1=https://github.com/JikUy"
set "creator2=https://github.com/y0-llc"

:checkForAdmin
>nul 2>&1 net session
if %errorlevel% == 0 (
    set admin2=true
    goto :gfudighfd
) else (
    set admin2=false
)
:gfudighfd
:checkForUpdate
curl -L "https://raw.githubusercontent.com/JikUy/Clouw/main/versiondata" --ssl-no-revoke --output "data\versiondata.clw" --silent

cls
set /p serverVersion=<data\versiondata.clw
cls

rem Supprimez le caractère de nouvelle ligne en utilisant une substitution de chaîne pour obtenir la version correcte
set serverVersion=!serverVersion:~8!
cls

curl -L "https://raw.githubusercontent.com/JikUy/Clouw/main/version" --ssl-no-revoke --output "data\version.txt" --silent
curl -L "https://raw.githubusercontent.com/JikUy/Clouw/main/version" --ssl-no-revoke --output "version2.clw" --silent
set /p serverVersion=<version2.clw
cls

ren data\version.txt data\version.clw
:welcome
cls
echo -----------------------------------------------
echo -----------------------------------------------
echo.
echo  .o88b. db       .d88b.  db    db db   d8b   db 
echo d8P  Y8 88      .8P  Y8. 88    88 88   I8I   88 
echo 8P      88      88    88 88    88 88   I8I   88 
echo 8b      88      88    88 88    88 Y8   I8I   88 
echo Y8b  d8 88booo. '8b  d8' 88b  d88 '8b d8'8b d8' 
echo  'Y88P' Y88888P  'Y88P'  'Y8888P'  '8b8' '8d8' 
echo. 
echo Your version:
echo %version%
echo.
echo Latest version:
type version2.clw
echo.
echo Started as admin:
echo %admin2%
echo.
echo Download Clouw:
echo %download%
echo.
echo Creator/s:
echo %creator1%,
echo %creator2%.
echo.
echo Latest Command:
type lcmmand.clw
echo.
echo -----------------------------------------------
echo -----------------------------------------------
goto :cstart
goto :%color%
:cstart
echo.
set /p clouw=[97m[0m
echo %clouw% > lcmmand.clw
if "%clouw%"=="color1" goto :c1
if "%clouw%"=="color2" goto :c2
if "%clouw%"=="color3" goto :c3
if "%clouw%"=="color4" goto :c4
if "%clouw%"=="color5" goto :c5
REM -NOTHING--------------------------------------------------
if "%clouw%"=="" goto :error2
if "%clouw%"==" " goto :error2
if "%clouw%"=="  " goto :error2
if "%clouw%"=="   " goto :error2
if "%clouw%"=="    " goto :error2
if "%clouw%"=="     " goto :error2
if "%clouw%"=="      " goto :error2
if "%clouw%"=="       " goto :error2
if "%clouw%"=="        " goto :error2
if "%clouw%"=="         " goto :error2
if "%clouw%"=="          " goto :error2
if "%clouw%"=="           " goto :error2
if "%clouw%"=="            " goto :error2
if "%clouw%"=="             " goto :error2
if "%clouw%"=="              " goto :error2
if "%clouw%"=="               " goto :error2
if "%clouw%"=="                " goto :error2
if "%clouw%"=="                 " goto :error2
if "%clouw%"=="                  " goto :error2
if "%clouw%"=="                  " goto :error2
if "%clouw%"=="                   " goto :error2
if "%clouw%"=="                    " goto :error2
if "%clouw%"=="                     " goto :error2
if "%clouw%"=="                      " goto :error2
if "%clouw%"=="                       " goto :error2
if "%clouw%"=="                        " goto :error2
if "%clouw%"=="                         " goto :error2
if "%clouw%"=="                          " goto :error2
if "%clouw%"=="                           " goto :error2
if "%clouw%"=="                            " goto :error2
if "%clouw%"=="                             " goto :error2
if "%clouw%"=="                              " goto :error2
if "%clouw%"=="                               " goto :error2
if "%clouw%"=="                                 " goto :error2
if "%clouw%"=="                                  " goto :error2
if "%clouw%"=="                                   " goto :error2
if "%clouw%"=="                                    " goto :error2
if "%clouw%"=="                                     " goto :error2
if "%clouw%"=="                                      " goto :error2
if "%clouw%"=="                                       " goto :error2
if "%clouw%"=="                                        " goto :error2
if "%clouw%"=="                                         " goto :error2
if "%clouw%"=="                                          " goto :error2
if "%clouw%"=="                                           " goto :error2
if "%clouw%"=="                                            " goto :error2
if "%clouw%"=="                                             " goto :error2
if "%clouw%"=="                                              " goto :error2
if "%clouw%"=="                                                " goto :error2
if "%clouw%"=="                                                 " goto :error2
if "%clouw%"=="                                                  " goto :error2
if "%clouw%"=="                                                   " goto :error2
if "%clouw%"=="                                                    " goto :error2
if "%clouw%"=="                                                     " goto :error2
if "%clouw%"=="                                                      " goto :error2
if "%clouw%"=="                                                       " goto :error2
if "%clouw%"=="                                                        " goto :error2
if "%clouw%"=="                                                         " goto :error2
if "%clouw%"=="                                                          " goto :error2
if "%clouw%"=="                                                           " goto :error2
if "%clouw%"=="                                                            " goto :error2
if "%clouw%"=="                                                             " goto :error2
if "%clouw%"=="                                                              " goto :error2

REM -NOTHING--------------------------------------------------
if "%clouw%"=="clr" goto :clear
) else (
    goto :error
)
REM -ERRORS--------------------------------------------------
:error
echo.
echo [91mWrong command/argument: %clouw%[0m
goto :cstart
exit
:error2
echo.
echo [91mWrong command/argument: You did not enter any text[0m
goto :cstart
exit
REM -ERRORS--------------------------------------------------
REM -COLOR--------------------------------------------------
:c1
set color=c1
color 0a
goto :cstart
:c2
set color=c2
color 04
goto :cstart
:c3
set color=c3
color 09
goto :cstart                   
:c4
set color=c4
color 05
goto :cstart                                 
:c5
set color=c5
color 0b
goto :cstart                                 
:cbasic
set color=cbasic
color 09
goto :cstart         
REM -COLOR--------------------------------------------------  
:clear
cls
goto :welcome
:end
exit
