read -p "Video file: " video_file

IFS="."

read -a strarr <<<"$video_file"

file_name="${strarr[0]}"
file_ext="${strarr[1]}"

codec_str="-c copy -map 0 -segment_time 00:00:25 -f segment -reset_timestamps 1"

eval "ffmpeg -i input/${video_file}  ${codec_str} output/${file_name}%03d.${file_ext}"
