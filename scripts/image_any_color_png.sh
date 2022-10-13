#!/usr/bin/env bash

read -p "Input file (PNG only): " input_file
read -p "Number of colors (number only)" colors_count

eval "pngquant --force --verbose ${colors_count} -o output/${colors_count}_${input_file} input/${input_file}"
