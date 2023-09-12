FROM rockylinux:8

# RUN dnf install -y systemd
RUN dnf install -y bind bind-utils

# ENTRYPOINT [ "/sbin/init" ]

ENTRYPOINT ["/usr/sbin/named", "-c", "/etc/named.conf", "-u", "named", "-g"]