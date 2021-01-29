gcloud config configurations activate default
gcloud container clusters get-credentials uat-kafka --zone asia-southeast1-a --project vexere-218206
export PROJECT_ID="$(gcloud config get-value project -q)"
kubectl config use-context gke_vexere-218206_asia-southeast1-a_uat-kafka
