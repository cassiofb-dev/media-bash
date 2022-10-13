#!/usr/bin/env bash

read -p "Input file (PNG only): " input_file

eval "pngquant --force --verbose 16 -o output/16_${input_file} input/${input_file}"
