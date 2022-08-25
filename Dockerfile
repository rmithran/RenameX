FROM python:3.9.2-slim-buster

RUN apt update && apt upgrade -y
RUN apt install git -y
COPY . .

RUN cd /
RUN pip3 install -U pip && pip3 install -U -r requirements.txt
RUN mkdir /RenameX
WORKDIR /RenameX
COPY bash.sh /bash.sh
CMD ["/bin/bash", "/bash.sh"]
