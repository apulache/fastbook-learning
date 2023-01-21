#! /bin/bash
docker run -p 8888:8888 --gpus all --ipc=host --ulimit memlock=-1 --ulimit stack=67108864 \
--network host -v ~/Workspace/nvidia_workspace/fastbook-learning:/workspace/notebooks \
-it --rm  apulache-fastbook-ps:v0.1 