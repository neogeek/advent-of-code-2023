FROM ubuntu:23.10

COPY . /usr/src/app

WORKDIR /usr/src/app

RUN apt-get -y update && apt-get -y install lua5.4

CMD ["lua", "./main.lua"]
