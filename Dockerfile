FROM ubuntu:22.04

WORKDIR /home

COPY ./docker-setup.sh . 

RUN ./docker-setup.sh

COPY ./.ssh/* /root/.ssh/

RUN chmod 600 /root/.ssh/id_ed25519

# RUN git clone git@github.com:CIS548/25fa-cis5480-garrett-kirsch-prj0.git

CMD ["sleep", "infinity"]