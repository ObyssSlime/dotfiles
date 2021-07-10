titleCmus=$(cmus-remote -C 'format_print %{title}')
statusCmus=$(cmus-remote -Q | grep "playing" | cut -c 8-14)
if [ "$statusCmus" = "playing" ]; then
	echo  $titleCmus
else
	echo  stopped
fi
