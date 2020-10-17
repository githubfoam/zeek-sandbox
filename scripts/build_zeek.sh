#!/bin/bash
set -eox pipefail #safety for script

#https://docs.zeek.org/en/current/install/install.html#prerequisites
#https://github.com/zeek/zeek
apt-get update -qq
apt-get install cmake make gcc g++ flex bison libpcap-dev libssl-dev python-dev swig zlib1g-dev -qqy
git clone --recursive https://github.com/zeek/zeek
cd zeek
./configure && make && sudo make install
cat <<EOF | sudo tee test.zeek
# File "test.zeek"

event zeek_init()
    {
    print "test zeek";
    }
EOF
zeek test.zeek
