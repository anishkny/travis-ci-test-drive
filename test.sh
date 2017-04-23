#!/bin/bash -x

# gcloud auth activate-service-account <your-service-account-email> --key-file /tmp/your-key.p12 --project <your-project-id>

gcloud auth activate-service-account travis-ci-runner@realworld-firebase.iam.gserviceaccount.com --key-file ./gcpcred.json --project realworld-firebase
gcloud info

# functions start
# functions deploy helloWorld --trigger-http
# functions call helloWorld
# functions stop