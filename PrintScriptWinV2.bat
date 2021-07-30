::This program installs the standard set of printers for windows
::Diego P. 2021
@echo off

::This is a list of printers to be installed:
set StandardPrinters= 73T_5th_Floor_Lounge LibraryMain01 LibraryMain02 LibraryMain03_CL Sawyer5 SawyerLab544

:: Updates/Installs papercut
%SystemRoot%\explorer.exe \\srv-pc-print.adm.suffolk.edu\PCClient\win\client-local-install.exe

:: Checks device list and installs them then cleans up 
for %%G in (%StandardPrinters%) DO (
	if %errorlevel% EQU 1 ( %SystemRoot%\explorer.exe \\srv-pc-print.adm.suffolk.edu\%%G
	)
)
& exit
