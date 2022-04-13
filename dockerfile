FROM python:3.8-slim

COPY scripts /home/workdir
COPY requirements.txt /home/workdir

RUN apt-get update && apt-get install -y git


RUN pip install mlflow
# --no-cache-dir mlflow
RUN pip install scikit-learn
# --no-cache-dir scikit-learn

RUN pip install -r /home/workdir/requirements.txt

ENTRYPOINT [ "/bin/bash" ]