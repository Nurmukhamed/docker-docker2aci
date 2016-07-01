FROM centos:7

ARG DOCKER2ACI_VERSION=0.11.1

RUN yum install -y golang git-core && \
    cd && \
    git clone --branch v$DOCKER2ACI_VERSION git://github.com/appc/docker2aci && \
    cd docker2aci && \
    ./build.sh && \
    cp -v ./bin/docker2aci /usr/bin && \
    cd .. && \
    rm -rf docker2aci && \
    yum remove -y golang git-core && \
    yum clean all

CMD /usr/bin/docker2aci
