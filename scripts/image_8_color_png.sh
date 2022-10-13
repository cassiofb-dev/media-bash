#!/usr/bin/env bash

read -p "Input file (PNG only): " input_file

eval "pngquant --force --verbose 8 -o output/8_${input_file} input/${input_file}"
