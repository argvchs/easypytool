@echo off
md assets
cd assets
del /f /s /q pysetup.exe
set version=3.10.4
set arch=x64
set /p version=python version (https://repo.huaweicloud.com/python):
set /p arch=architecture (x86/x64):
if %arch%==x86 (echo iwr -uri "https://repo.huaweicloud.com/python/%version%/python-%version%.exe" -o "pysetup.exe" > download.ps1) else (echo iwr -uri "https://repo.huaweicloud.com/python/%version%/python-%version%-amd64.exe" -o "pysetup.exe" > download.ps1)
powershell -exe bypass -f download.ps1 && pysetup
@echo on
