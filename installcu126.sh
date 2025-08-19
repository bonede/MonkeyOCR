#!/usr/bin/bash
pip uninstall -y numpy
pip install paddlepaddle-gpu==3.0.0 -i https://www.paddlepaddle.org.cn/packages/stable/cu126
pip install "paddlex[base]"
pip install torch==2.6.0 torchvision==0.21.0 torchaudio==2.6.0 --index-url https://download.pytorch.org/whl/cu126
pip install -e .
pip install lmdeploy==0.8.0
python tools/download_model.py