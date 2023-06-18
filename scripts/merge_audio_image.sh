read -p "Audio file: " audio_file
read -p "Image file: " image_file

read -p "Framerate (number only): " framerate

read -p "Output file: " output_file

codec_str="-c:a libopus -b:a 256K -c:v libx264 -preset slow -crf 20 -r ${framerate} -shortest"

eval "ffmpeg -i input/${audio_file} -loop 1 -i input/${image_file} ${codec_str} output/${output_file}"
