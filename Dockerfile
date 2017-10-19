FROM gcr.io/tensorflow/tensorflow:latest-gpu-py3
RUN apt-get update && apt-get install -y --no-install-recommends \
	    wget 
RUN pip install keras
