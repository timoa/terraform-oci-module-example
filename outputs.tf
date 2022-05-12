output "regions" {
  description = "Return the list of all OCI regions"
  value       = data.oci_identity_regions.regions.regions
}
