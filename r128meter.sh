#!/bin/sh

SDL_AUDIODRIVER="alsa"
AUDIODEV="plughw:CARD=XUSB"

while true; do
	ffplay -fflags nobuffer -loglevel quiet -f lavfi -i "amovie='plughw\:CARD=XUSB':f=alsa,ebur128=video=1:size=xga:peak=none:meter=9:metadata=0[out0][out1]" -nostats -fs -framedrop
done
