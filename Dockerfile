FROM bitnami/git:latest
COPY ssh ~/.ssh/  
RUN git clone git@github.com:waltdundore/control-repo.git



FROM puppet/puppetserver:7.9.2
COPY $PWD/control-repo /etc/puppetlabs/code/


COPY $PWD/ca-ssl /etc/puppetlabs/puppetserver/ca
