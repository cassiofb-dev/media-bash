#!/bin/bash

eval "clear"

PS3="
Select a script above (ctrl+c to exit): "

options=(scripts/*)

select option in "${options[@]}"
do
  eval "bash ${option}"
  echo "--------------------------------------------------------"
  echo "${option} finished!"
done
