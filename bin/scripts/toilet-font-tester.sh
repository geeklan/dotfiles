#!/bin/bash

# Display all the possible toilet fonts in /usr/share/toilet
#


for i in ${TOILET_FONT_PATH:=/usr/share/figlet}/*.{t,f}lf; do j=${i##*/}; toilet -d "${i%/*}" -f "$j" "${j%.*}"; done | lolcat
