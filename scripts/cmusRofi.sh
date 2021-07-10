p="shutdown"
u="cmus pause"
s="cmus stop"
n="cmus next"
v="cmus previous"
r="cmus repeat"
f="cmus shuffle"
options="$p\n$u\n$s\n$n\n$v\n$r\n$f"

ex="$(echo -e $options | rofi -dmenu)"

case $ex in
	$p)
		shutdown now
	;;
	$u)
		cmus-remote -u
	;;
	$s)
		cmus-remote -s
	;;
	$n)
		cmus-remote -n
	;;
	$v)
		cmus-remote -r
	;;
	$r)
		cmus-remote -R
	;;
	$f)
		cmus-remote -S
	;;
esac



