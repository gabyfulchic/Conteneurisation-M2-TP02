FROM alpine:3.13.2

RUN adduser --home /home/dev --shell /bin/sh --disabled-password dev

ENV PROJECT_DIR=/home/dev/project
USER dev
WORKDIR ${PROJECT_DIR}
COPY motd /etc/motd

CMD ["cat", "/etc/motd"]
