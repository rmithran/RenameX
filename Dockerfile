FROM python:3.9.1-buster

WORKDIR /usr/src/app

COPY . .

RUN pip install -U -r requirements.txt

CMD [ "python", "-m", "MeshRenameBot" ]

WORKDIR /RenameX
COPY start.sh /start.sh
CMD ["/bin/bash", "/start.sh"]
