export TF_BINARY_URL=https://storage.googleapis.com/tensorflow/linux/gpu/tensorflow_gpu-0.12.1-cp35-cp35m-linux_x86_64.whl

pip install --upgrade $TF_BINARY_URL
pip install --upgrade $TF_BINARY_URL --ignore-installed
