
cat tail -n +2 Devices.txt | while read line; do
	lpadmin -p $line -L  "$line" -E -v ipp://srv-pc-print.adm.suffolk.edu/$line -P /Library/Printers/PPDs/Contents/Resources/Generic.ppd	
done

