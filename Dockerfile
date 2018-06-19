FROM python:2.7-onbuild

RUN yum install -y zlib zlib-devel readline-devel bzip2-devel openssl-devel gdbm-devel \
    libdbi-devel ncurses-libs kernel-devel libxslt-devel libffi-devel python-devel \
    libvirt libvirt-client libvirt-devel gcc git mysql-devel

#RUN yum install -y gcc make python-devel openssl-devel kernel-devel graphviz kernel-debug-devel autoconf automake rpm-build redhat-rpm-config libtool


COPY supervisord.conf /etc/supervisord.conf