#!/bin/bash
# vim: fileencoding=utf-8:nomodified:nowrap:textwidth=0:foldmethod=marker:foldcolumn=4:syntax=sh:filetype=sh:ruler:showcmd:lcs=tab\:|- list
#echo /usr/bin/avrdude -c usbasp -U flash:r:xx.hex:i -p atmega8u2
echo /usr/bin/avrdude -c usbasp -U flash:r:xx.hex:i -p atmega328p
if [ "$1" != "--all" -o "x$2" == "x" ] ; then
   echo "$0 -all fname_base"
   echo " to read all parts to filenames fname_base-part.hex"
   exit
fi
echo "### READ ALL PARTS ###"
for i in eeprom flash lfuse hfuse efuse lock calibration signature ; do
   avrdude -c usbasp -U $i:r:$2-$i.hex:i -p atmega328p
done
