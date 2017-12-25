@echo on

appveyor DownloadFile http://mirrors.ctan.org/systems/win32/miktex/setup/miktex-portable.exe

7z x miktex-portable.exe -oC:\miktex >NUL

mpm --verbose --install cm-super
mpm --verbose --install amstex

mpm --verbose --install beamer
mpm --verbose --install pgf
mpm --verbose --install xcolor

cp -f language.dat c:\miktex\texmfs\install\tex\generic\config\language.dat
cp -f language.dat.lua c:\miktex\texmfs\install\tex\generic\config\language.dat.lua

initexmf -u
initexmf --dump

initexmf --set-config-value "[MPM]AutoInstall=1"

@echo off
