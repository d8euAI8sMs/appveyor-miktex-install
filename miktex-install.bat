@echo on

appveyor DownloadFile http://mirrors.ctan.org/systems/win32/miktex/setup/miktex-portable.exe

7z x miktex-portable.exe -oC:\miktex >NUL

mpm --install --verbose cm-super
mpm --install --verbose amstex

cp -f language.dat c:\miktex\texmfs\install\tex\generic\config\language.dat
cp -f language.dat.lua c:\miktex\texmfs\install\tex\generic\config\language.dat.lua

initexmf -u
initexmf --dump

initexmf --set-config-value "[MPM]AutoInstall=1"

@echo off
