data "google_secret_manager_secrets" "secret_manager_secrets_lookup" {
  for_each = var.secret_manager_secrets_lookup

  filter  = each.value.filter
  project = each.value.project
}

