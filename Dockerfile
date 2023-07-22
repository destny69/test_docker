
FROM python:3.11.3-alpine

ENV PYTHONUNBUFFERED=1
RUN apk update && apk add postgresql-dev gcc python3-dev musl-dev
WORKDIR /django

COPY requirements.txt requirements.txt

RUN pip install -r requirements.txt