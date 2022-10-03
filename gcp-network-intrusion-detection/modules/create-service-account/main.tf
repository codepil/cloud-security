module "suricata_instance_service_account" {
  source       = "git::https://github.com/codepil/terraform-code-bits/gcp-service-account?ref=v1.0.1"
  name         = "${var.prefix}-ids"
  display_name = "Suricata Service Account"
  project_id   = var.project
  project_roles = [
    "roles/logging.logWriter",
    "roles/monitoring.metricWriter",
    "roles/storage.objectViewer",
  ]
}