# Dockerfile
FROM docker.repository.cloudera.com/cdsw/engine:12-cml-2020.06-2

MAINTAINER Paul de Fusco "pauldefusco@cloudera.com"

# update packages and install maven
RUN apt-get update && \
    apt-get install -y -q graphviz maven mc && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

RUN pip install graphviz

RUN apt-get update

