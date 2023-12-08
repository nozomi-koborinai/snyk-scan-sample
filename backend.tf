terraform {
  backend "gcs" {
    bucket = "snyk-iac-sample-backend"
  }
}