FROM alpine:3.13.2

RUN adduser --home /home/dev --shell /bin/sh --disabled-password dev
ENV PROJECT_DIR=/home/dev/project
WORKDIR ${PROJECT_DIR}
COPY motd /home/dev/project/motd

CMD ["cat", "/home/dev/project/motd"]
