#!/bin/bash

python3 -m venv unet_seg

source unet_seg/bin/activate

pip install --upgrade pip

pip install -r requirements.txt

echo "Setup is complete. To activate the virtual environment, run 'source unet_seg/bin/activate'."