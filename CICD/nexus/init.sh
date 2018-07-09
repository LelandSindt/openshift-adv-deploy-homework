#!/bin/bash
#https://github.com/OpenShiftDemos/nexus
set -e
oc new-project lms-headwaters-nexus
oc new-app -f nexus3-persistent-template.yml --param=NEXUS_VERSION=3.12.1 -n lms-headwaters-nexus
#echo "press enter when nexus is online..."
#read 
#./setup_nexus3.sh admin admin123 http://$(oc get route nexus --template='{{ .spec.host }} -n lms-headwaters-nexus')
