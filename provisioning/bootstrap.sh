#!/bin/bash
set -eox pipefail #safety for script

echo "===================================================================================="
hostnamectl
echo "===================================================================================="
echo "         \   ^__^                                                                  "
echo "          \  (oo)\_______                                                          "
echo "             (__)\       )\/\                                                      "
echo "                 ||----w |                                                         "
echo "                 ||     ||

export WD="/scratch"
mkdir ${WD} && cd ${WD} 
apt-get update && apt-get upgrade -qqy && echo 2020-06-22
apt-get -qqy install build-essential git bison flex gawk cmake swig libssl1.0-dev libmaxminddb-dev libpcap-dev python-dev libcurl4-openssl-dev wget libncurses5-dev ca-certificates zlib1g-dev --no-install-recommends
