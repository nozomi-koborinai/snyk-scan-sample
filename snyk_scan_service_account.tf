# Snyk IaC Scan 用
resource "google_service_account" "snyk_scan_service_account" {
  account_id   = "snyk-scan"
  display_name = "Snyk Integration"
  project      = local.project
}
resource "google_project_iam_member" "snyk_scan_service_account" {
  count   = length(local.snyk_roles)
  project = local.project
  member  = "serviceAccount:${google_service_account.snyk_scan_service_account.email}"
  role    = element(local.snyk_roles, count.index)
}

# Scan Scheduler 用
resource "google_service_account" "scheduler_service_account" {
  account_id   = "cloud-scheduler-snyk-scan"
  display_name = "cloud scheduler Integration"
  project      = local.project
}
resource "google_project_iam_member" "scheduler_service_account" {
  count   = length(local.scheduler_roles)
  project = local.project
  member  = "serviceAccount:${google_service_account.scheduler_service_account.email}"
  role    = element(local.scheduler_roles, count.index)
}