FROM tensorflow/tensorflow:latest-gpu-py3-jupyter
RUN apt-get update && apt-get install -y --no-install-recommends \
	    wget git  python3-sqlalchemy \
        python3-venv  \
        libsm6 libxext6 libxrender-dev
         
RUN pip install keras xlrd opencv-contrib-python mtcnn

