locals {
  project = "snyk-iac-sample"

  region = "asia-northeast1"

  time_zone = "Asia/Tokyo"

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

  snyk_roles = [
    "roles/viewer",
    "roles/cloudasset.viewer",
    "roles/iam.securityReviewer",
    "roles/cloudbuild.builds.builder",
    "roles/secretmanager.secretAccessor",
    "roles/logging.configWriter",
  ]

  scheduler_roles = [
    "roles/iam.serviceAccountUser",
    "roles/cloudbuild.builds.builder",
    "roles/cloudscheduler.jobRunner",
  ]
}