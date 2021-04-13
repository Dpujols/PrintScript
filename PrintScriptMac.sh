input="/Volumes/BRIAN_WORK/PrintScript-main/Devices.txt" 

while read line; do
	echo $line
	lpadmin -p Printer_Name -L "$line" -E -v smb://srv-pc-print.adm.suffolk.edu/$line -P System/Library/Frameworks/ApplicationServices.framework/Versions/A/Frameworks/PrintCore.framework/Versions/A/Resources/Generic.ppd
done < "$input"
