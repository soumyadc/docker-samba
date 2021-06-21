FROM alpine:latest
MAINTAINER Soumyadeep Chowdhury <sdc.imp@gmail.com>

WORKDIR /app
RUN apk --no-cache --no-progress add samba
COPY ./smb.conf /app
COPY ./samba.sh /app
EXPOSE 137 138 139 445
