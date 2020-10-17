# zeek sandbox

Travis (.com) branch:
[![Build Status](https://travis-ci.com/githubfoam/zeek-sandbox.svg?branch=master)](https://travis-ci.com/githubfoam/zeek-sandbox)  

~~~~
vagrant up

$ export PATH=/opt/zeek/bin:$PATH
~~~~
~~~~
wget https://www.malware-traffic-analysis.net/2018/CTF/2018-CTF-from-malware-traffic-analysis.net-1-of-2.pcap.zip
https://www.malware-traffic-analysis.net/2018/CTF/index.htm

$ unzip 2018-CTF-from-malware-traffic-analysis.net-2-of-2.pcap.zip
password:infected
zeek -Cr 2018-CTF-from-malware-traffic-analysis.net-2-of-2.pcap

[vagrant@vg-zeek-02 ~]$ cat dhcp.log | zeek-cut mac
00:1e:67:4a:d7:5c
00:1e:67:4a:d7:5c
00:1e:67:4a:d7:5c
[vagrant@vg-zeek-02 ~]$ cat dhcp.log | zeek-cut client_addr
172.17.1.129
172.17.1.129
172.17.1.129

Q1: What is the MAC address of the Windows client at 172.17.1.129?
[vagrant@vg-zeek-02 ~]$ cat dhcp.log | zeek-cut mac client_addr | sort | uniq
00:1e:67:4a:d7:5c       172.17.1.129

Q2: What is the host name for the Windows client at 172.17.1.129?
$ cat dhcp.log | zeek-cut client_addr host_name | sort | uniq
172.17.1.129    Nalyvaiko-PC

~~~~
~~~~
"zeek-source" role, platform independent building from git source

<https://docs.zeek.org/en/stable/install/install.html#installing-from-source>
~~~~
