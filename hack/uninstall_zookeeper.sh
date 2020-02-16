#!/bin/bash

firewall-cmd --remove-service=zookeeper --permanent
firewall-cmd --reload
systemctl stop zookeeper
systemctl disable zookeeper
rm -rf /usr/lib/systemd/system/zookeeper.service /etc/firewalld/services/zookeeper.xml
systemctl daemon-reload
#rm -rf /opt/apache-zookeeper* /opt/zookeeper*
