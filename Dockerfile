FROM golang
MAINTAINER Roman Saveljev <roman.saveljev@haltian.com>

RUN \
	export DEBIAN_FRONTEND=noninteractive && \
	apt-key update && \
	apt-get -y update && \
	apt-get install -y curl
    
RUN \
    curl -L https://github.com/sstephenson/bats/archive/v0.4.0.tar.gz | tar xzv -C /tmp && \
    /tmp/bats-0.4.0/install.sh /usr/local && \
    rm -rf /tmp/bats-0.4.0

RUN \
    go get github.com/tools/godep
