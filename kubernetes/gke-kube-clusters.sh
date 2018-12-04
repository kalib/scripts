#!/bin/bash

# Prints all GKE clusters available in your GCP account

for i in `gcloud projects list --format="csv[no-heading](PROJECT_ID)"`
do
gcloud container clusters list --format="table[box,title=${i}](NAME,LOCATION,MASTER_VERSION,NODE_VERSION)" --project=${i}
done
