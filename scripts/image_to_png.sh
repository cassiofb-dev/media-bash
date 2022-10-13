#!/usr/bin/env bash

read -p "Input file: " input_file

IFS="."

read -a strarr <<<"$input_file"

file_name="${strarr[0]}"

eval "ffmpeg -i input/${input_file} output/${file_name}.png"
