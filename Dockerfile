FROM python:3.8.2-slim

# Sets dumping log messages directly to stream instead of buffering
ENV PYTHONUNBUFFERED 1

WORKDIR /usr/src/

COPY ./requirements.txt .

RUN pip install -U pip && pip install -r requirements.txt

COPY manage.py .

COPY app ./app
