#!/bin/bash -x

# Authenticate local gcloud using credentials file (gcpcred.json)
gcloud auth activate-service-account travis-ci-runner@realworld-firebase.iam.gserviceaccount.com --key-file gcpcred.json --project realworld-firebase
gcloud info

# Start functions local emulator
functions start
functions deploy helloWorld --trigger-http
functions call helloWorld

# Ping published local endpoint
LOCAL_URL=`functions describe helloWorld | grep Resource | grep -o 'http://[^[:space:]]*' `
curl "$LOCAL_URL/ping"

# Shutdown functions local emulator
functions stop

