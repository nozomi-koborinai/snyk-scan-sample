resource "google_service_account" "snyk_scan_service_account" {
  account_id   = "snyk-scan"
  display_name = "Snyk Scan"
  project      = local.project
}
