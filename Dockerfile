# ldapserver
FROM fedora:27
LABEL version="1.0"
LABEL author="Jordi Quirós Berbel" 
LABEL subject="ldapserver_prova"
RUN dnf install -y openldap-servers openldap-clients
RUN mkdir /opt/docker
COPY * /opt/docker/
RUN chmod +x /opt/docker/startup.sh
WORKDIR /opt/docker
CMD /opt/docker/startup.sh

