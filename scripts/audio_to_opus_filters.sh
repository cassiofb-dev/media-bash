#!/usr/bin/env bash

read -p "Input file: " input_file

IFS="."

read -a strarr <<<"$input_file"

file_name="${strarr[0]}"

filter_432hz="asetrate=43200,aresample=43200,atempo=1"

filter_slow="atempo=0.865"

filter_reverb="aecho=0.8:0.88:60:0.4"

filter_bass="bass=g=3"

filter_normalizer="dynaudnorm"

filter_str="-af ${filter_432hz},${filter_slow},${filter_reverb},${filter_bass},${filter_normalizer}"

codec_str="-c:a libopus -b:a 256K"

eval "ffmpeg -i input/${input_file} ${codec_str} ${filter_str} output/${file_name}.opus"
