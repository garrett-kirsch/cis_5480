FROM ubuntu:22.04

WORKDIR /home

COPY . . 

RUN ./docker-setup.sh

CMD ["sleep", "infinity"]