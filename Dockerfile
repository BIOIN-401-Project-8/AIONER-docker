FROM nvcr.io/nvidia/tensorflow:24.02-tf2-py3

COPY requirements.txt /tmp/
RUN pip install --no-cache-dir -r /tmp/requirements.txt

COPY . /app
WORKDIR /app

#  pip install -U "huggingface_hub[cli]"
# huggingface-cli download lingbionlp/AIONER-0415 pretrained_models.zip
# unzip pretrained_models.zip
# rm pretrained_models.zip
