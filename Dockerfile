FROM nikolaik/python-nodejs:python3.9-nodejs16

RUN apt update && apt upgrade -y
RUN apt install ffmpeg -y
RUN apt install nodejs -y

COPY requirements.txt /requirements.txt
RUN cd /
RUN pip3 install -U pip && pip3 install -U -r requirements.txt
RUN mkdir /Player
WORKDIR /Player
COPY start.sh /start.sh
CMD ["/bin/bash", "/start.sh"]
