FROM fedora:27
RUN dnf -y install krb5-server 
RUN mkdir /opt/docker
COPY * /opt/docker/
RUN chmod +x /opt/docker/install.sh /opt/docker/startup.sh
WORKDIR /opt/docker
CMD /opt/docker/startup.sh 
