$cat tail -n +5 Devices.txt | while read line; do
	lpadmin -p $line -D $line -E -v smb://srv-pc-print.adm.suffolk.edu/printers/$line -P /System/Library/Frameworks/ApplicationServices.framework/Versions/A/Frameworks/PrintCore.framework/Versions/A/Resources/Generic.ppd 
	sleep .5
 	lpstat -a
done

