#!/usr/bin/env bash

read -p "Video file: " video_file

IFS="."

read -a strarr <<<"$video_file"

file_name="${strarr[0]}"

hardware_str="-hwaccel vaapi -vaapi_device /dev/dri/card0"

codec_str="-c:a libopus -b:a 128k -c:v hevc_vaapi -compression_level 1 -crf 30 -tune animation"

eval "ffmpeg ${hardware_str} -i input/${video_file} -vf 'format=nv12,hwupload' ${codec_str} output/${file_name}.mkv"
