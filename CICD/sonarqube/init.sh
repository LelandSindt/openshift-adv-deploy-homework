#!/bin/bash
set -e
#https://github.com/OpenShiftDemos/sonarqube
oc new-project lms-headwaters-sonarqube
oc new-app -f sonarqube-postgresql-template.yml --param=SONARQUBE_VERSION=7.0 
