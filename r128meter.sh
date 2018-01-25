#!/bin/sh

#export DISPLAY=":0.0"
export SDL_AUDIODRIVER="alsa"
export AUDIODEV="plughw:1"

while true; do
	clear
	ffplay -fflags nobuffer -loglevel quiet -f lavfi -i \
	"amovie='plughw\:1':f=alsa,ebur128=video=1:size=800x480:peak=none:meter=9:metadata=0[out0][out1]" \
	-nostats -framedrop -fs;
done;
