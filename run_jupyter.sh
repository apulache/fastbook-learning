#! /bin/bash
docker run -p 8888:8888 --gpus all --ipc=host --ulimit memlock=-1 --ulimit stack=67108864 \
--network host -v ~/Workspace/AI_LAB_Repo/fastbook-learning:/workspace/notebooks \
-it --rm  apulache-fastbook-gpu:v0.1 \
/bin/bash -c "jupyter lab --ip=0.0.0.0  --port=8888 --notebook-dir=/workspace/notebooks --allow-root --no-browser"