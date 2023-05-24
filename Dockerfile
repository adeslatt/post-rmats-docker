FROM continuumio/miniconda3
LABEL description="Base docker image with continuumio/miniconda3"
ARG ENV_NAME="postrmats"

RUN apt-get update
RUN pip install pandas

ADD ./sampleCountsSave.sh /usr/local/bin/
RUN chmod +x /usr/local/bin/sampleCountsSave.sh
ADD ./create-matrix.py /usr/local/bin/
RUN chmod +x /usr/local/bin/create-matrix.py
ADD ./create_matrices_from_files.sh /usr/local/bin/
RUN chmod +x /usr/local/bin/create_matrices_from_files.sh
ADD ./normalize_matrices_from_files.sh /usr/local/bin/
RUN chmod +x /usr/local/bin/normalize_matrices_from_files.sh
