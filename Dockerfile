# Toolbox
#
# Version: 0.0.1

FROM fedora:latest
MAINTAINER Nicholas Moore

VOLUME /root/

ADD vimrc /etc/vimrc

RUN yum -y install man; \
    yum -y install zsh docker-io tcpdump htop net-tools bind-tools vim-enhanced tmux openssh-clients git-core rsync python-pip golang; \
    pip install awscli; \
    yum clean all; \
    echo "alias ll=\'ls -l\'" >> /etc/profile; \
    echo "alias vi=\'vim\'" >> /etc/profile

ENTRYPOINT [ "/bin/zsh" ]
