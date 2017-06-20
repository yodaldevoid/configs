#!/bin/bash

(read line && echo "$line" && read line && echo "$line" && read line && echo "$line" && while :
do
  read line

  if xset q | grep "DPMS is Enabled" >/dev/null 2>&1 ; then
      text="{\"full_text\":\"Scr\"}"
  else
      text="{\"color\":\"#FFFF00\",\"full_text\":\"Scr\"}"
  fi

  echo ",[${text},${line#,\[}" || exit 1
done)
