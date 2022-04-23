#############################
# Global
#############################

variable "namespace" {
  type        = string
  description = "Project name that will be use to identifiy the resources"
  default     = "my-project"
}

variable "stage" {
  type        = string
  description = "Stage/environment name to tag and suffix the infrastructure composants"
  default     = "dev"
}

#############################
# Oracle Cloud Infrastrcture
#############################

variable "tenancy_ocid" {
  type        = string
  description = "Tenancy OCID"
  default     = null # Set with TF_VAR_tenancy_ocid environment variable on ~/.zprofile or ~/.bash_profile
}

#############################
# Auth
#############################

variable "oci_auth" {
  type        = string
  description = "Authentication method"
  default     = "SecurityToken"
}

variable "oci_config_file_profile" {
  type        = string
  description = "The profile to use for the Oracle Cloud Infrastructure provider"
  default     = "DEFAULT"
}

#############################
# Location
#############################

variable "region" {
  type        = string
  description = "Default Region"
  default     = "uk-london-1"
}

#############################
# Labels
#############################

variable "labels" {
  type        = map(string)
  description = "Default labels to associate to these resources"
  default = {
    # Only lowercase keys allowed
    businessunit = "mycompany"
    team         = "devops"
    terraform    = "true"
  }
}
