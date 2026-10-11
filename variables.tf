variable "secret_manager_secrets_lookup" {
  description = <<EOT
Map of secret_manager_secrets_lookup, attributes below
Optional:
    - filter
    - project
EOT

  type = map(object({
    filter  = optional(string)
    project = optional(string)
  }))
}

