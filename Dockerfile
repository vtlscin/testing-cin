FROM python:3.7-slim
# install the notebook package
RUN pip install --no-cache --upgrade pip && \
    pip install --no-cache notebook

RUN pip3 install --no-cache notebook
ENV HOME=/tmp
ENV WORKDIR=/tmp
COPY ./app /tmp
