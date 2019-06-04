FROM python:3.7-alpine
MAINTAINER mvdwaeter

ENV PYTHONRUNBUFFERED 1

COPY ./requirements.txt /requirements.txt
RUN pip install --trusted-host pypi.python.org -r /requirements.txt

RUN mkdir /app
WORKDIR /app
COPY ./app /app

# user only has execute access, hence less security risk as no longer root
RUN adduser -D user
USER user
