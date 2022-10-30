read -p "Video file: " video_file
read -p "CRF: " crf
read -p "Width: " width
read -p "Height: " height
read -p "Framerate: " framerate

file_options="crf_${crf}_${width}x${height}_${framerate}fps"

IFS="."

read -a strarr <<<"$video_file"

file_name="${strarr[0]}"

filter_str="-vf scale=${width}:${height},fps=fps=${framerate}"
codec_str="-c:a copy -c:v libsvtav1 -preset 4 -crf ${crf}"

eval "ffmpeg -i input/${video_file} ${filter_str} ${codec_str} output/${file_name}_${file_options}.mkv"
