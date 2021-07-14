s="Shutdown"
r="Reboot"
options="$s\n$r"

ex="$(echo -e $options | rofi -dmenu)"

case $ex in
	$s)
		shutdown now
	;;
	$r)
		reboot
	;;
esac



