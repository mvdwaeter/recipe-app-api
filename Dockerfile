FROM python:3.7-alpine
MAINTAINER mvdwaeter

ENV PYTHONRUNBUFFERED 1

COPY ./requirements.txt /requirements.txt
RUN \
 apk add --no-cache postgresql-libs && \
 apk add --no-cache --virtual .build-deps gcc musl-dev postgresql-dev && \
 python3 -m pip install -r /requirements.txt --no-cache-dir && \
 apk --purge del .build-deps

RUN mkdir /app
WORKDIR /app
COPY ./app /app

# user only has execute access, hence less security risk as no longer root
RUN adduser -D user
USER user
