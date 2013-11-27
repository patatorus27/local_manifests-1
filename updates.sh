#!/bin/bash

if [ -f ~/bin/paths-10.1.sh ]; then
	source ~/bin/paths-10.1.sh
fi

if [ "${android}" = "" ]; then
	android=~/android/system
fi

# "not enough rainbows, 1 star uninstall"
cherries+=(36777)

# libloc_api: Reduce debug level
cherries+=(51894)
# librpc: Reduce debug messages
cherries+=(51896)

${android}/build/tools/repopick.py -b -f ${cherries[@]}
