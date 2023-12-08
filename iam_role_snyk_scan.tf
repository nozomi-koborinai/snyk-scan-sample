# クラウドアセット閲覧者
resource "google_project_iam_member" "snyk_scan_cloudasset_reviewer" {
  role    = "roles/cloudasset.viewer"
  member  = "serviceAccount:snyk-scan@snyk-iac-sample.iam.gserviceaccount.com"
  project = local.project
}

# セキュリティ審査担当者
resource "google_project_iam_member" "snyk_scan_security_reviewer" {
  role    = "roles/iam.securityReviewer"
  member  = "serviceAccount:snyk-scan@snyk-iac-sample.iam.gserviceaccount.com"
  project = local.project
}

# 閲覧者
resource "google_project_iam_member" "snyk_scan_reviewer" {
  role    = "roles/viewer"
  member  = "serviceAccount:snyk-scan@snyk-iac-sample.iam.gserviceaccount.com"
  project = local.project
}