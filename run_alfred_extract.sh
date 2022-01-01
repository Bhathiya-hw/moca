#!/bin/bash
if [[ $# -lt 1 ]]
then
    PATH_DIR=$(realpath .)
else
    PATH_DIR=$(realpath "$1")
fi

python -m data.extract_vision \
--data_path=/home/bhash/moca/moca/data/json_2.1.0/  \
--type=alfred \
--split_id=train  \
--num_workers=4 \
--splits="${PATH_DIR}"/data/splits/oct21.json \
--reward_config="${PATH_DIR}"/models/config/rewards.json  \
--images_folder="${PATH_DIR}"/data/alfred_extract/  \
--start_task_id=8000  \
--end_task_id=12000