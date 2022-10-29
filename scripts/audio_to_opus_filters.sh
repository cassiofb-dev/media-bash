#!/usr/bin/env bash

read -p "Input file: " input_file

IFS="."

read -a strarr <<<"$input_file"

file_name="${strarr[0]}"

filter_432hz="asetrate=44100*432/440,aresample=44100,atempo=440/432"

filter_slow="atempo=0.865"

filter_reverb="aecho=0.8:0.88:60:0.4"

filter_bass="bass=g=3"

filter_normalizer="dynaudnorm"

filter_str="-af ${filter_432hz},${filter_slow},${filter_reverb},${filter_bass},${filter_normalizer}"

eval "ffmpeg -i input/${input_file} ${filter_str} output/${file_name}_tmp.opus"

codec_str="-c:a libopus -b:a 256K"

eval "ffmpeg -i output/${file_name}_tmp.opus ${codec_str} output/${file_name}.opus"

eval "rm output/${file_name}_tmp.opus"
