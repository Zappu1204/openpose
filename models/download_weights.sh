#!/bin/bash
script_dir=$(realpath $(dirname "$0"))
echo "$script_dir"

POSE_FOLDER="$script_dir/pose/"
FACE_FOLDER="$script_dir/face/"
HAND_FOLDER="$script_dir/hand/"

# ------------------------- POSE (BODY+FOOT) MODELS -------------------------
# Body (BODY_25)
BODY_25_FOLDER=${POSE_FOLDER}"body_25/"
BODY_25_MODEL=${BODY_25_FOLDER}"pose_iter_584000.caffemodel"
wget -c "https://m7xr-my.sharepoint.com/:u:/g/personal/azusavps_m7xr_onmicrosoft_com/EU_oV00xZzpGn7k1X8VBzJsBwosQz0lzAhvct_tkar4UHg?e=cqD6Ew&download=1" -O ${BODY_25_MODEL}

# # Body (COCO)
# COCO_FOLDER=${POSE_FOLDER}"coco/"
# COCO_MODEL=${COCO_FOLDER}"pose_iter_440000.caffemodel"
# wget -c "https://m7xr-my.sharepoint.com/:u:/g/personal/azusavps_m7xr_onmicrosoft_com/ETFGWbo94rJFhniMoBxqgGEBS2uS5_HStd77qBBqbqTmsw?e=CAVM2G&download=1" -O ${COCO_MODEL}
# # Alternative: it will not check whether file was fully downloaded
# # if [ ! -f $COCO_MODEL ]; then
# #     wget ${OPENPOSE_URL}$COCO_MODEL -P $COCO_FOLDER
# # fi

# # Body (MPI)
# MPI_FOLDER=${POSE_FOLDER}"mpi/"
# MPI_MODEL=${MPI_FOLDER}"pose_iter_160000.caffemodel"
# wget -c "https://m7xr-my.sharepoint.com/:u:/g/personal/azusavps_m7xr_onmicrosoft_com/EeDmyddeLn1Lk0TH86FRJDUB2qVlsTPI_HMr0Ynzbh5DIA?e=tby4Vx&download=1" -O ${MPI_MODEL}

# # "------------------------- FACE MODELS -------------------------"
# # Face
# FACE_MODEL=${FACE_FOLDER}"pose_iter_116000.caffemodel"
# wget -c "https://m7xr-my.sharepoint.com/:u:/g/personal/azusavps_m7xr_onmicrosoft_com/Ea_NRw8GeXZDl1f_n4-tG7MBfElFydWiCGmrN2MtpTlHVg?e=63NxEC&download=1" -O ${FACE_MODEL}

# "------------------------- HAND MODELS -------------------------"
# Hand
HAND_MODEL=$HAND_FOLDER"pose_iter_102000.caffemodel"
wget -c "https://m7xr-my.sharepoint.com/:u:/g/personal/azusavps_m7xr_onmicrosoft_com/EZiv-BPIyNZMmk4vEuKnpeUBXTJqej7RYc6zN6GYh6xfoQ?e=BaXTe6&download=1" -O ${HAND_MODEL}