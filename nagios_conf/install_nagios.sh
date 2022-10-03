#!/bin/bash

cd /root/nagios/nagios-4.4.6
./configure --with-command-group=nagcmd
make all
make install

make install-init 
make install-commandmode
make install-config
make install-webconf

systemctl start httpd.service
systemctl enable httpd.service

firewall-cmd --add-service=http --permanent
firewall-cmd --add-service=https --permanent
firewall-cmd --reload

systemctl start nagios
systemctl enable nagios

systemctl daemon-reload


