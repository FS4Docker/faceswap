#!/bin/bash

python3.8 faceswap.py -h
python3.8 faceswap.py extract -i ./para_convertir.mp4 -o ./extracted -D s3fd -A fan -nm hist -rf 10 -min 0 -l 0.4 -sz 768 -een 1 -si 250 -L INFO
python3.8 faceswap.py convert -i ./para_convertir.mp4 -o ./output -al ../last_alignments.fsa -m ./model -ref ./para_convertir.mp4 -c avg-color -M extended -w ffmpeg -osc 100 -l 0.4 -j 0 -L INFO