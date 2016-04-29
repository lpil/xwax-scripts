#!/bin/sh

echo Setting Audio4DJ to line level inputs.
amixer -c Audio4DJ cset numid=1 1
echo Preamp diabled.
