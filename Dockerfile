FROM ubuntu:22.04

RUN apt update && apt install -y curl neovim sudo
# RUN printf 'DNS=1.1.1.1\nDNSStubListener=no' > /etc/systemd/resolved.conf
RUN curl -fsSL https://get.docker.com | sh
RUN curl https://get.tau.link/tau | sh

WORKDIR /tau
COPY ./start.sh ./
CMD [ "./start.sh" ]