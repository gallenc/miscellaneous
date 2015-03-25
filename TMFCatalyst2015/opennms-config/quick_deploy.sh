#!/bin/bash
#
# quick_deploy.sh - deployer for config files to opennms on centos 7

# Define a timestamp 
DATE=$(date +"%Y%m%d%H%M")

## WMI configuration
## (comment out move unless file actually changed)

## move /etc config files

 mv /opt/opennms/etc/collectd-configuration.xml /opt/opennms/etc/collectd-configuration.xml.$DATE
 cp ./collectd-configuration.xml /opt/opennms/etc/

 mv /opt/opennms/etc/datacollection-config.xml /opt/opennms/etc/datacollection-config.xml.$DATE
 cp ./datacollection-config.xml /opt/opennms/etc/

 mv /opt/opennms/etc/wmi-config.xml /opt/opennms/etc/wmi-config.xml$DATE
 cp ./wmi-config.xml /opt/opennms/etc/

 mv /opt/opennms/etc/wmi-datacollection-config.xml /opt/opennms/etc/wmi-datacollection-config.xml.$DATE
 cp ./wmi-datacollection-config.xml /opt/opennms/etc/


## move graph properties files

 mv /opt/opennms/etc/snmp-graph.properties.d/microsoft-wmi-graph.properties   /opt/opennms/etc/snmp-graph.properties.d/microsoft-wmi-graph.properties.$DATE
 cp ./microsoft-wmi-graph.properties /opt/opennms/etc/snmp-graph.properties.d/

 mv /opt/opennms/etc/snmp-graph.properties.d/wmi-memory-graph.properties   /opt/opennms/etc/snmp-graph.properties.d/wmi-memory-graph.properties.$DATE
 cp ./wmi-memory-graph.properties /opt/opennms/etc/snmp-graph.properties.d/

 mv /opt/opennms/etc/snmp-graph.properties.d/wmi-physdisk-graph.properties   /opt/opennms/etc/snmp-graph.properties.d/wmi-physdisk-graph.properties.$DATE
 cp ./wmi-physdisk-graph.properties /opt/opennms/etc/snmp-graph.properties.d/
