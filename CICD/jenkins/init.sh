#!/bin/bash
set -e
oc new-project lms-headwaters-jenkins
oc new-app -f jenkins-persistent-template.yml 
