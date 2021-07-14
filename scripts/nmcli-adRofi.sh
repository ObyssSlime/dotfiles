figlet -f small NMCLI-AD
echo List Number:
echo 1. connect
echo 2. delete
echo

read -p "Select Number: " number
if [ $number = 1 ]; then
	clear
	figlet -f small Networks
	nmcli d wifi list
	echo
	read -p "SSID : " add
	nmcli d wifi connect $add
elif [ $number = 2 ]; then
	clear
	figlet -f small Networks
	nmcli c
	echo
	read -p "Connection Name: " del
	nmcli c delete $del
fi
