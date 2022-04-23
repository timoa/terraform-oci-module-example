output "quotas" {
  description = "Return the list of quotas per resources"
  value       = data.oci_limits_quotas.quotas.quotas
}
