#!/bin/bash

cd /root/nagios

#download nagios core and plugins

echo "Downloading Nagios core 4.4.6 and Nagios plugins 2.3.3"
wget https://assets.nagios.com/downloads/nagioscore/releases/nagios-4.4.6.tar.gz
wget https://nagios-plugins.org/download/nagios-plugins-2.3.3.tar.gz

echo "Extracting the Nagios and Plugins Package"

tar -zxvf /root/nagios/nagios-4.4.6.tar.gz
tar -zxvf /root/nagios/nagios-plugins-2.3.3.tar.gz

