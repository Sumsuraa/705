Code is tested on python 3.11.5 and torch 2.1.1 with cuda 12.1
Dataset Link : https://www.kaggle.com/datasets/sovitrath/penn-fudan-pedestrian-dataset-for-segmentation?select=PennFudanPed
Dataset Location : ./src/input/

To Run make sure you have required version of python installed.

1) Run the setup.sh(setup.cmd if using windows) file to create a virtual env and install all the required pkgs. (Note this only install the cpu version of torch, gpu version require manual installation)
Note: On GPU 1 epoch of tranning takes approx. 1 min, so on cpu this is going to be significantly higher

2) Navigate to the src directory activate the env there using "source unet_seg/bin/activate" on Linux or "call unet_seg\Scripts\activate" on windows

3) Run train.py script using "python train.py". Epochs batch and lr can also be configured using "python train.py --epochs 100 --batch 4 --lr 0.005"

4) When train.py runs, it asks for wandb authentication. Either do the offline by pressing 3, or use your wandb credential to access the live dashboard by using 1 or 2.

5) Run Inference.ipynb using Jupyter Notebook or VS Code(with Jupyter Notebook extension) for inference.


EXTRA INFO:
./src/input directory contains the dataset structerd into train/train_mask/valid/valid_mask
./src/outputs directory contains the best model and graphs and images created during traning
./src/test_images directory contains 3 test images to test the model during inference
./src/*.py files contains the implementation of UNet and data prep code

 


