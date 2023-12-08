resource "google_project_service" "google_apis" {
  for_each = { for v in local.apis : v => v }

  project                    = local.project
  service                    = each.value
  disable_dependent_services = true
}