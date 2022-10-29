#!/usr/bin/env bash

read -p "Video file: " video_file

IFS="."

read -a strarr <<<"$video_file"

file_name="${strarr[0]}"

eval "ab-av1 auto-encode -i input/${video_file} --preset 4 -o output/${file_name}"
