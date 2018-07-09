#!/bin/bash
#https://github.com/OpenShiftDemos/gogs-openshift-docker
set -e
oc new-project lms-headwaters-gogs
oc new-app -f gogs-persistent-template.yml -p HOSTNAME=gogs.`oc project --short=true`.apps.na37.openshift.opentlc.com --param=GOGS_VERSION=0.11.4
