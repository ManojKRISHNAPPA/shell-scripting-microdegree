#!/bin/bash
echo "Normal usage"
echo "this is first line"
echo "this is second line"
echo
echo "escape chars \n"
#escape characters 

# \n --> newline
#
echo -e "this is first line\nthis is second line"
echo
echo "escape chars \t"
#\t--> Horsizontal tab
#
echo -e "this is first line\tthis is second line"
echo
echo
echo "escape chars \v"
#\v --> vertical tab
echo -e "this is first line\vthis is second line"

echo "escape chars \b"
#\v --> backspace
echo -e "this is first line\bthis is second line"

#echo "escape chars \"
#\ --> escape char
#echo "this is about "bash" scripting"
