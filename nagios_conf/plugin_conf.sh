#!/bin/bash

cd /root/nagios/nagios-plugins-2.3.3/
./configure --with-nagios-user=nagios --with-nagios-group=nagcmd
make all
make install

/usr/local/nagios/bin/nagios -v /usr/local/nagios/etc/nagios.cfg

systemctl enable nagios
systemctl start nagios.service

