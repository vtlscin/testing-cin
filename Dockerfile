FROM ubuntu:18.04

RUN apt-get update && apt-get install -y python3-pip

# Install jupyter and python dependency
WORKDIR /usr/src/app
COPY ./requirements.txt /usr/src/app/requirements.txt
RUN pip3 install -r requirements.txt

RUN pip3 install --no-cache notebook
ENV HOME=/tmp
ENV WORKDIR=/tmp
COPY ./app /tmp

CMD jupyter notebook --ip=0.0.0.0 --port=8888 --allow-root --NotebookApp.token=''