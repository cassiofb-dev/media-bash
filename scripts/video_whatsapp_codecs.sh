read -p "Video file: " video_file
read -p "Width: " width
read -p "Height: " height

IFS="."

read -a strarr <<<"$video_file"

file_name="${strarr[0]}"

filter_str="-vf scale=${width}:${height}"
codec_str="-c:a aac -c:v libx264 -preset slow -tune animation -crf 28"

eval "ffmpeg -i input/${video_file} ${filter_str} ${codec_str} output/${file_name}.mp4"
