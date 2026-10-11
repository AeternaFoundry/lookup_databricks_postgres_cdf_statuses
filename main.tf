data "databricks_postgres_cdf_statuses" "postgres_cdf_statuses_lookup" {
  for_each = var.postgres_cdf_statuses_lookup

  parent          = each.value.parent
  page_size       = each.value.page_size
  provider_config = each.value.provider_config
}

