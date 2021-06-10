::This program installs the standard set of printers for windows
::Diego P. 2021

@echo off

:: Checks device list and installs them
for /f "delims= skip=1" %%G in (Devices.txt) DO %SystemRoot%\explorer.exe \\srv-pc-print.adm.suffolk.edu\%%G

::TODO: Consider allowing for a choice of which dorm building to install
::TODO: Ineffecient loop, Needs to check if printer is already installed (no need to waste bandwith pulling drivers) 

:: Updates/Installs papercut
%SystemRoot%\explorer.exe \\srv-pc-print.adm.suffolk.edu\PCClient\win\client-local-install.exe
