#!/bin/bash
current_level=$(asusctl -k | awk '{print $5}')
if [ "$current_level" == "0" ]; then
 asusctl -k low
else
 if [ "$current_level" == "1" ]; then
  asusctl -k med
 else
  if [ "$current_level" == "2" ]; then
   asusctl -k high
  fi
 fi
fi