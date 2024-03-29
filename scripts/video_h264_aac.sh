read -p "Video file: " video_file

IFS="."

read -a strarr <<<"$video_file"

file_name="${strarr[0]}"

codec_str="-c:a aac -b:a 256k -c:v libx264 -preset slow -tune animation -crf 20"

eval "ffmpeg -i input/${video_file} ${codec_str} output/${file_name}.mp4"
