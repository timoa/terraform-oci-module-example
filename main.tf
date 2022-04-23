data "oci_limits_quotas" "quotas" {
  compartment_id = var.tenancy_ocid
}
