#!/bin/bash

yum install -y httpd httpd-tools php gcc glibc glibc-common gd gd-devel make net-snmp openssl openssl-devel unzip wget perl
useradd nagios
groupadd nagcmd
usermod -G nagcmd nagios
usermod -G nagcmd apache
mkdir /root/nagios
getent group | grep nagcmd
id nagios
