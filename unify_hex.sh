#!/bin/bash
# vim: fileencoding=utf-8:nomodified:nowrap:textwidth=0:foldmethod=marker:foldcolumn=4:syntax=sh:filetype=sh:ruler:showcmd:lcs=tab\:|- list

if [ ! -f "$1" ] ; then
   echo "$0 filename.hex"
   echo " to unify filename.hex into zz_filename.hexXX "
   echo " lines like ':offsetXXXXXXXXXXXXXXXXXXcc' are parsed and wrapped to 16 bytes values / row only"
   echo " :offset and cc checksum are dropped so it can be easily compare 16 / 32 bytes long lines"
   exit
fi

sed "s#\r##;s#^:.\{8\}\(.*\)..$#\1#;s#\(.\{32\}\)\(.\)#\1\n\2#"  >zz_$1XX
