resource "google_cloud_scheduler_job" "job" {
  name      = "snyk-iac-scan-scheduler"
  region    = local.region
  time_zone = local.time_zone
  schedule  = "0 0 * * *"
  project   = local.project

  http_target {
    http_method = "POST"
    uri         = "https://cloudbuild.googleapis.com/v1/projects/${local.project}/locations/global/triggers/${google_cloudbuild_trigger.snyk_scan_trigger.trigger_id}:run"
    body        = base64encode("{\"projectId\": \"${local.project}\",\"triggerId\": \"${google_cloudbuild_trigger.snyk_scan_trigger.trigger_id}\",\"source\":{\"branchName\":\"main\"}}")
    oauth_token {
      service_account_email = google_service_account.scheduler_service_account.email
      scope                 = "https://www.googleapis.com/auth/cloud-platform"
    }
  }
}