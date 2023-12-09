resource "google_cloudbuild_trigger" "snyk_scan_trigger" {
  name    = "snyk-scan-trigger"
  project = local.project

  source_to_build {
    uri       = "https://github.com/nozomi-koborinai/snyk-scan-sample"
    ref       = "refs/heads/main"
    repo_type = "GITHUB"
  }

  git_file_source {
    path      = "cloudbuild/snyk.yaml"
    uri       = "https://github.com/nozomi-koborinai/snyk-scan-sample"
    revision  = "refs/heads/main"
    repo_type = "GITHUB"
  }

  approval_config {
    approval_required = false
  }


  substitutions = {
    _PROJECT_ID               = local.project
    _TERRAFORM_CLIENT_VERSION = "1.4.0"
  }
  included_files  = ["cloudbuild/**"]
  service_account = google_service_account.snyk_scan_service_account.id
}