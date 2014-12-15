rm -f tfifo
rm -f logo.rgba
mkfifo tfifo
convert logo.png logo.rgba
(
	alpha=-255
	fade=20
	while [[ $alpha -le 0 ]]
	do
		(echo "RGBA32 200 200 0 0 $alpha 1"; cat logo.rgba) >tfifo
		sleep 0.1
		let t=alpha+fade
		if [[ $alpha -ne 0  &&  $t -gt 0 ]]; then t=0; fi
		alpha=$t
	done
	sleep 0.5
	while [[ $alpha -ge -255 ]]
	do
		(echo "RGBA32 200 200 0 0 $alpha 1"; cat logo.rgba) >tfifo
		sleep 0.1
		let t=alpha-fade
		if [[ $alpha -ne 0  &&  $t -le -255 ]]; then t=-255; fi
		alpha=$t
	done
) &
pid=$!

mplayer -vf bmovl=0:0:tfifo -noborder -quiet -ontop -fps 15 -geometry 200x150+1110+560 noaudio tv://

rm -f tfifo
rm -f logo.rgba
if kill -0 $pid; then kill -9 $pid; fi
