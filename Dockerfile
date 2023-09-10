FROM rockylinux:8

RUN dnf install -y systemd bind bind-utils

ENTRYPOINT [ "/sbin/init" ]