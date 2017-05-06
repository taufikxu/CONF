#!/bin/bash

local_ip=`/sbin/ifconfig -a|grep inet|grep -v 127.0.0.1|grep -v inet6|awk '{print $2}'|tr -d "{地址,addr}:" `
sudo ip tunnel add sit1 mode sit remote 59.66.4.50 local $local_ip
sudo ifconfig sit1 up
sudo ifconfig sit1 add 2001:da8:200:900e:0:5efe:$local_ip/64
sudo ip route add ::/0 via 2001:da8:200:900e::1 metric 1
