#!/usr/bin/env bash

read -p "Input file: " input_file

IFS="."

read -a strarr <<<"$input_file"

file_name="${strarr[0]}"

codec_str="-c:v libwebp -r 10"

eval "ffmpeg -i input/${input_file} ${codec_str} output/${file_name}.webp"
