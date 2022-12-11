FROM bitnami/git:latest
RUN git clone git@github.com:waltdundore/control-repo.git



FROM puppet/puppetserver:7.9.2
COPY ./code:/etc/puppetlabs/code/


COPY $PWD/ca-ssl:/etc/puppetlabs/puppetserver/ca
