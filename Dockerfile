FROM python:3.7-alpine

# for disable buffer outputs 
ENV PYTHONUNBUFFERED 1

COPY ./requirements.txt /requirements.txt

RUN pip install -r /requirements.txt & mkdir /app

WORKDIR /app

COPY ./app /app