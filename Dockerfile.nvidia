ARG FROM_IMAGE_NAME=nvcr.io/nvidia/pytorch:22.12-py3 

FROM ${FROM_IMAGE_NAME} AS baseline

ENV TZ=America/Lima

# RUN apt-get update && apt-get upgrade -y && apt-get autoremove -y && apt-get install graphviz curl -y 

RUN apt-get update && apt-get install graphviz curl -y 
    
RUN curl -fsSL https://deb.nodesource.com/setup_18.x | bash - && apt-get install nodejs -y

FROM baseline

RUN pip3 install --verbose --upgrade pip jupyterlab Pillow && \
    pip3 install --verbose ipywidgets nodejs npm graphviz && \
    pip3 install --verbose jupyter_contrib_nbextensions && \
    jupyter contrib nbextension install --user && \
    pip3 install --verbose  fastai && \
    pip3 install -Uqq fastbook
