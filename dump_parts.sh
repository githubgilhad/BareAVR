#!/bin/bash
# vim: fileencoding=utf-8:nomodified:nowrap:textwidth=0:foldmethod=marker:foldcolumn=4:syntax=sh:filetype=sh:ruler:showcmd:lcs=tab\:|- list

avrdude -c usbasp -t -p atmega328p <<EOF
part
quit
EOF
