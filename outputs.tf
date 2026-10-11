output "postgres_cdf_statuses_lookup_cdf_statuses" {
  description = "Map of cdf_statuses values across all postgres_cdf_statuses_lookup, keyed the same as var.postgres_cdf_statuses_lookup except keys with no cdf_statuses are omitted"
  value       = { for k, v in data.databricks_postgres_cdf_statuses.postgres_cdf_statuses_lookup : k => v.cdf_statuses if v.cdf_statuses != null && length(v.cdf_statuses) > 0 }
}
output "postgres_cdf_statuses_lookup_page_size" {
  description = "Map of page_size values across all postgres_cdf_statuses_lookup, keyed the same as var.postgres_cdf_statuses_lookup except keys with no page_size are omitted"
  value       = { for k, v in data.databricks_postgres_cdf_statuses.postgres_cdf_statuses_lookup : k => v.page_size if v.page_size != null }
}
output "postgres_cdf_statuses_lookup_parent" {
  description = "Map of parent values across all postgres_cdf_statuses_lookup, keyed the same as var.postgres_cdf_statuses_lookup except keys with no parent are omitted"
  value       = { for k, v in data.databricks_postgres_cdf_statuses.postgres_cdf_statuses_lookup : k => v.parent if v.parent != null && length(v.parent) > 0 }
}
output "postgres_cdf_statuses_lookup_provider_config" {
  description = "Map of provider_config values across all postgres_cdf_statuses_lookup, keyed the same as var.postgres_cdf_statuses_lookup except keys with no provider_config are omitted"
  value       = { for k, v in data.databricks_postgres_cdf_statuses.postgres_cdf_statuses_lookup : k => v.provider_config if v.provider_config != null && length(v.provider_config) > 0 }
}

