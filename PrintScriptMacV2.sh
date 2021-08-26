#!/usr/bin/env bash
cd "${0%/*}"

declare -a Devices=(73T_5th_Floor_Lounge LibraryMain01 
LibraryMain02 LibraryMain03_CL Sawyer5 SawyerLab544)

for printer in "${Devices[@]}"
	do
	lpadmin -p $printer -D $printer -E -v smb://srv-pc-print.adm.suffolk.edu/printers/$printer -P /System/Library/Frameworks/ApplicationServices.framework/Versions/A/Frameworks/PrintCore.framework/Versions/A/Resources/Generic.ppd 
	sleep .5
	done
 	lpstat -a

open -a smb://srv-pc-ls-print.adm.suffolk.edu/pcclient/mac/client-local-install.app

