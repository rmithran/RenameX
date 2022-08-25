FROM python:3.9.1-buster

WORKDIR /usr/src/app

COPY . .
RUN cd /

RUN pip install -U -r requirements.txt

RUN mkdir /Searchy

WORKDIR /RenameX
COPY start.sh /start.sh
CMD ["/bin/bash", "/start.sh"]
