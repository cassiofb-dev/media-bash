#!/usr/bin/env bash

read -p "Input file: " input_file

IFS="."

read -a strarr <<<"$input_file"

file_name="${strarr[0]}"

codec_str="-c:a aac -b:a 256k"

eval "ffmpeg -i input/${input_file} ${codec_str} output/${file_name}.mp3"
