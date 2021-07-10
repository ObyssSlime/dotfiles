nameCon=$(nmcli -g name connection | head -n 1)
statusCon=$(nmcli -g active connection | head -n 1)

if [ $statusCon = "yes" ]; then
	echo  $nameCon
else 
	echo  Disconnect
fi
