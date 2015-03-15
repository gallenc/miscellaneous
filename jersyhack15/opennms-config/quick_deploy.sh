#!/bin/bash
#
# quick_deploy.sh - deployer for config files to opennms on centos 7

# Define a timestamp 
DATE=$(date +"%Y%m%d%H%M")

mv /opt/opennms/etc/collectd-configuration.xml /opt/opennms/etc/collectd-configuration.xml.$DATE
cp ./collectd-configuration.xml /opt/opennms/etc/

mv /opt/opennms/etc/xml-datacollection-config.xml /opt/opennms/etc/xml-datacollection-config.xml$DATE
cp ./xml-datacollection-config.xml /opt/opennms/etc/

cp ./jersey-hack-bitcoin-graph.properties /opt/opennms/etc/snmp-graph.properties.d/