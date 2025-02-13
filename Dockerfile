FROM debian:latest
WORKDIR /usr/local/devcont

ENV PUBLICKEY=""

RUN apt-get update
RUN apt-get install sudo openssh-server curl wget git iproute2 -y  
COPY 01_devcont.conf /etc/ssh/sshd_config.d/

RUN useradd -m -s /bin/bash user
RUN usermod -aG sudo user
RUN mkdir -p /home/user/.ssh
COPY ./run.sh ./
RUN chmod +x run.sh

CMD ["sh","/usr/local/devcont/run.sh"]

