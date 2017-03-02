FROM ubuntu:14.04

#ADD etc/apt/sources.list /etc/apt/sources.list

RUN apt-get update
RUN apt-get install -y git
RUN apt-get install -y python python-pip
RUN apt-get install -y python-dev
RUN pip install numpy
RUN pip install sklearn

COPY *.py /src/image_classification/
COPY *.csv /src/image_classification/
COPY train/* /src/image_classification/train/
COPY test/* /src/image_classification/test/
COPY outtrain/* /src/image_classification/outtrain/
COPY outtest/* /src/image_classification/outtest/



RUN apt-get update && apt-get install -y \
    php5-mcrypt \
    python-pip

#RUN curl -O https://bootstrap.pypa.io/get-pip.py && \
#    python get-pip.py && \
#    rm get-pip.py

#RUN pip --no-cache-dir install \
        #ipykernel \
        #jupyter \
        #matplotlib \
   #     numpy \
   #     scipy \
   #     sklearn \
   #     Pillow \
      #  && \
    #python -m ipykernel.kernelspec
RUN pip  install https://storage.googleapis.com/tensorflow/linux/cpu/tensorflow-0.12.1-cp27-none-linux_x86_64.whl
#RUN pip install --upgrade $TF_BINARY_URL
#pip install numpy
#python 2
