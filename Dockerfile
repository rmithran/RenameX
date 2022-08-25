FROM python:3.9.1-buster

WORKDIR /usr/src/app

COPY requirements.txt /requirements.txt
RUN cd /

RUN pip3 install -U pip && pip3 install -U -r requirements.txt

RUN mkdir /Searchy

WORKDIR /RenameX
COPY start.sh /start.sh
CMD ["/bin/bash", "/start.sh"]
