p="Play Cmus"
s="Stop Cmus"
n="Next Cmus Song"
r="Previous Cmus Song"
options="$p\n$s\n$n\n$r"

ex="$(echo -e $options | rofi -dmenu)"

case $ex in
	$p)
		cmus-remote -l -p
	;;
	$s)
		cmus-remote -l -s
	;;
	$n)
		cmus-remote -l -n
	;;
	$r)
		cmus-remote -l -r
	;;
esac



