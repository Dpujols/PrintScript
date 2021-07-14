#!/usr/bin/env bash 
cd "${0%/*}" #sets directory to the script location
$cat tail -n +5 Devices.txt | while read line; do #Reads Devices.txt and assigns them to the "Line" variable  
	lpadmin -p $line -D $line -E -v smb://srv-pc-print.adm.suffolk.edu/printers/$line -P /System/Library/Frameworks/ApplicationServices.framework/Versions/A/Frameworks/PrintCore.framework/Versions/A/Resources/Generic.ppd 
	#The line above does two things: Adds the printer using lpadmin and assigns it the generic driver package available in MacOS. 
	sleep .5
 	lpstat -a #This is used to list the current devices and make sure a printer is added
done
open -a smb://srv-pc-ls-print.adm.suffolk.edu/pcclient/mac/PCClient

