FROM python:3.8
ENV PYTHONUNBUFFERED 1
RUN mkdir /canteen
WORKDIR /canteen

RUN apt-get update &&  apt-get install -y

COPY requirements.txt /canteen/

RUN pip3 install -r requirements.txt

COPY . /canteen/
