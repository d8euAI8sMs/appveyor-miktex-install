@echo on

git submodule update --init --recursive
move miktex-binary\miktexsetup.zip .

7z x miktexsetup.zip

miktexsetup.exe --verbose --local-package-repository=C:\miktex-repository --package-set=basic download
miktexsetup.exe --verbose --local-package-repository=C:\miktex-repository --package-set=basic --shared --user-config=C:\miktex --user-data=C:\miktex --user-install=C:\miktex --common-config=C:\miktex --common-data=C:\miktex --common-install=C:\miktex --use-registry=no install

mpm --admin --verbose --install cm-super
mpm --admin --verbose --install amstex

mpm --admin --verbose --install beamer
mpm --admin --verbose --install pgf
mpm --admin --verbose --install xcolor

initexmf --admin --set-config-value "[MPM]AutoInstall=1"

@echo off
