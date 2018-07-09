#!/bin/bash
set -e
oc create -f mongo-headlessservice-template.yml -n lms-headwaters-prod
oc create -f mongo-service-template.yml -n lms-headwaters-prod
oc create -f mongo-statefulset-template.yml -n lms-headwaters-prod
