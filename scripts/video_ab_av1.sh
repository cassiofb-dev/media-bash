#!/usr/bin/env bash

read -p "Video file: " video_file

IFS="."

read -a strarr <<<"$video_file"

file_name="${strarr[0]}"

eval "ab-av1 auto-encode -i input/${video_file} --preset 4 -o output/${file_name}.tmp"

eval "ffmpeg -i output/${file_name}.tmp -c:a libopus -b:a 128k -c:v copy output/${file_name}.mkv"

eval "rm output/${file_name}.tmp"
