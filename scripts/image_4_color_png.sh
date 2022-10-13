#!/usr/bin/env bash

read -p "Input file (PNG only): " input_file

eval "pngquant --force --verbose 4 -o output/4_${input_file} input/${input_file}"
