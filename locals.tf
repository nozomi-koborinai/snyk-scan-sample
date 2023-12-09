locals {
  project = "snyk-iac-sample"

  apis = [
    "cloudapis.googleapis.com",
    "cloudbuild.googleapis.com",
    "storage-api.googleapis.com",
    "storage.googleapis.com",
    "iam.googleapis.com",
    "serviceusage.googleapis.com",
    "servicemanagement.googleapis.com",
    "cloudasset.googleapis.com",
    "cloudresourcemanager.googleapis.com",
    "cloudshell.googleapis.com",
    "cloudtrace.googleapis.com",
    "logging.googleapis.com",
    "monitoring.googleapis.com",
    "stackdriver.googleapis.com",
    "servicenetworking.googleapis.com",
    "servicecontrol.googleapis.com",
    "cloudscheduler.googleapis.com"
  ]
}