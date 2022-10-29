read -p "Video file: " video_file
read -p "CRF: " crf

IFS="."

read -a strarr <<<"$video_file"

file_name="${strarr[0]}"

codec_str="-c:a copy -c:v libsvtav1 -preset 4 -crf ${crf}"

eval "ffmpeg -i input/${video_file} ${codec_str} output/${file_name}_crf${crf}.mkv"
