# syntax=docker/dockerfile:1

FROM python:stretch

WORKDIR /app
COPY requirements.txt requirements.txt
RUN pip3 install -r requirements.txt
COPY . .
CMD ["gunicorn", "-b", ":8080", "main:APP"]

