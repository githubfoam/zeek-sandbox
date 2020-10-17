FROM debian:stretch as builder

ENV WD /scratch

RUN mkdir ${WD}
WORKDIR /scratch

RUN apt-get update && apt-get upgrade -y && echo 2020-06-22
RUN apt-get -y install build-essential git bison flex gawk cmake swig libssl1.0-dev libmaxminddb-dev libpcap-dev python-dev libcurl4-openssl-dev wget libncurses5-dev ca-certificates zlib1g-dev --no-install-recommends
