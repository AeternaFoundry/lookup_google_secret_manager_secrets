output "secret_manager_secrets_lookup_id" {
  description = "Map of id values across all secret_manager_secrets_lookup, keyed the same as var.secret_manager_secrets_lookup except keys with no id are omitted"
  value       = { for k, v in data.google_secret_manager_secrets.secret_manager_secrets_lookup : k => v.id if v.id != null && length(v.id) > 0 }
}
output "secret_manager_secrets_lookup_filter" {
  description = "Map of filter values across all secret_manager_secrets_lookup, keyed the same as var.secret_manager_secrets_lookup except keys with no filter are omitted"
  value       = { for k, v in data.google_secret_manager_secrets.secret_manager_secrets_lookup : k => v.filter if v.filter != null && length(v.filter) > 0 }
}
output "secret_manager_secrets_lookup_project" {
  description = "Map of project values across all secret_manager_secrets_lookup, keyed the same as var.secret_manager_secrets_lookup except keys with no project are omitted"
  value       = { for k, v in data.google_secret_manager_secrets.secret_manager_secrets_lookup : k => v.project if v.project != null && length(v.project) > 0 }
}
output "secret_manager_secrets_lookup_secrets" {
  description = "Map of secrets values across all secret_manager_secrets_lookup, keyed the same as var.secret_manager_secrets_lookup except keys with no secrets are omitted"
  value       = { for k, v in data.google_secret_manager_secrets.secret_manager_secrets_lookup : k => v.secrets if v.secrets != null && length(v.secrets) > 0 }
}

