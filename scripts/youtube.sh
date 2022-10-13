#!/usr/bin/env bash

read -p "Youtube URL: " youtube_url

eval "yt-dlp -F ${youtube_url}"

read -p "Choose format: " youtube_format

eval "yt-dlp -f ${youtube_format} ${youtube_url} -o 'input/%(title)s.%(ext)s'"
