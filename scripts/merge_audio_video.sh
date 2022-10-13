#!/usr/bin/env bash

read -p "Audio file: " audio_file
read -p "Video file: " video_file
read -p "Output file: " output_file

codec_str="-c:a copy -c:v copy -shortest"

eval "ffmpeg -i input/${audio_file} -i input/${video_file} ${codec_str} output/${output_file}"
