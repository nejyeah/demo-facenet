FROM gcr.io/tensorflow/tensorflow:1.5.0-gpu

RUN mkdir /app
WORKDIR /app

COPY requirements_py2.txt /app/requirements_py2.txt
RUN buildDeps='vim make thrift-compiler python-opencv python-tk' \
    && apt-get update \
    && apt-get install -y $buildDeps \
    && pip install -r requirements_py2.txt


