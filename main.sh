#!/bin/sh

TAB=`printf "	"`
printf "<\!doctype html>\n<html lang="en">\n$TAB<meta charset="utf-8">\n\n"

TITLE=`awk -F: '{ print $1 }' ./head.conf`
DESC=`awk -F: '{ print $2 }' ./head.conf`
AUTH=`awk -F: '{ print $3 }' ./head.conf`

sed "s/{TITLE}/$TITLE/;s/{DESCRIPTION}/$DESC/;s/{AUTHOR}/$AUTH/" ./t.d/head.html
printf "\n\n"
printf "$TAB<body>\n\n"
printf "<!-- START OF CONTENTS IN C.D -->\n"
cat ./c.d/*
printf "<!-- END -->\n\n"

printf "$TAB</body>\n</html>"
