e="enable touchpad"
d="disable touchpad"
options="$e\n$d"

ex="$(echo -e $options | rofi -dmenu)"

case $ex in
	$e)
		xinput enable 14
	;;
	$d)
		xinput disable 14
	;;
esac



