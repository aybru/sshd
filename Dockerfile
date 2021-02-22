FROM alpine:latest
RUN apk add --no-cache openssh

ADD rootfs /

EXPOSE 22

ENTRYPOINT ["entrypoint"]
CMD ["/usr/sbin/sshd","-D","-e"]
