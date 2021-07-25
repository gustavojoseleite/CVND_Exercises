#RUN

docker run -it --gpus all -e DISPLAY=$DISPLAY -v "$(pwd):/home/computer_vision_udacity" --net=host --privileged  gl/computer_vision_udacity