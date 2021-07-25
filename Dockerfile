FROM nvcr.io/nvidia/tensorflow:20.09-tf2-py3 

RUN apt-get -y update && apt-get -y install htop

RUN pip3 install numpy
RUN pip3 install matplotlib
RUN pip3 install opencv-python

RUN apt-get -y update
RUN apt-get -y install libgl1-mesa-glx
RUN pip3 install devpi-client
RUN pip3 install devpi-server==4.8.0
RUN pip3 install torch==1.5.1+cu101 torchvision==0.6.1+cu101 -f https://download.pytorch.org/whl/torch_stable.html

WORKDIR /home/computer_vision_udacity