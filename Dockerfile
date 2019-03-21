FROM tensorflow/tensorflow:latest-gpu-py3-jupyter
RUN apt-get update && apt-get install -y --no-install-recommends \
	    wget git  python3-sqlalchemy \
        python3-venv  \
        libsm6 libxext6 libxrender-dev
         
RUN pip install keras xlrd opencv-contrib-python mtcnn
CMD ["bash", "-c", "source /etc/bash.bashrc && jupyter notebook --notebook-dir=/tf --ip 0.0.0.0 --no-browser --allow-root --NotebookApp.password=$PASSWORD"]
#CMD ["bash", "-c", "source /etc/bash.bashrc && jupyter notebook --notebook-dir=/tf --ip 0.0.0.0 --no-browser --allow-root"]

