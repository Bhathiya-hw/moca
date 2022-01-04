#!/bin/bash
if [[ $# -lt 1 ]]
then
    PATH_DIR=$(realpath .)
else
    PATH_DIR=$(realpath "$1")
fi

python -m data.alfred_object_detection \
--data_root="${PATH_DIR}"/data/alfred_extract/ \
--split='task_0-10'  \
--output_file="${PATH_DIR}"/data/alfred_extract/object_detection/task_0-10.json