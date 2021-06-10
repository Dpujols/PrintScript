::This program installs the standard set of printers for windows
::Diego P. 2021
@echo off

:: Creates a dirty list of installed network printers
reg query HKEY_CURRENT_USER\Printers\Connections >> "%userprofile%\Desktop\installedprinters.txt"

:: Cleans up the list then deletes the old file
(for /f "tokens=3 delims=, " %%X in (%userprofile%\Desktop\installedprinters.txt) DO (
	echo %%X
	echo/
)) >"%userprofile%\Desktop\PrinterNames.txt"
DEL %userprofile%\Desktop\installedprinters.txt

@echo off

:: Updates/Installs papercut
%SystemRoot%\explorer.exe \\srv-pc-print.adm.suffolk.edu\PCClient\win\client-local-install.exe


:: Checks device list and installs them then cleans up 
for /f "delims= skip=1" %%G in (Devices.txt) DO (
	find [/i] "%%G" [%userprofile%\Desktop\PrinterNames.txt]
	if %errorlevel% EQU 1 ( %SystemRoot%\explorer.exe \\srv-pc-print.adm.suffolk.edu\%%G
	)
)
DEL %userprofile%\Desktop\PrinterNames.txt
