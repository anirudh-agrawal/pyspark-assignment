#!/bin/bash

for file in $(ls files)
do
    echo $file $(head -2 "files/"$file| tail -1 ) >> StationsID.txt
done 
