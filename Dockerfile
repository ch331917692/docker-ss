FROM centos
COPY shadowsocks-all.sh /home/
RUN yum install -y wget && \
    chmod +x /home/shadowsocks-all.sh && \
    /home/shadowsocks-all.sh 2>&1 | tee /home/shadowsocks-all.log
CMD /etc/init.d/shadowsocks-python start && /bin/bash