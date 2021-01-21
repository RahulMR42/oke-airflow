# ---------------------------------------------------------------------------------------------------------------------
# Environmental variables
# You probably want to define these as environmental variables.
# Instructions on that are here: https://github.com/oci-quickstart/oci-prerequisites
# ---------------------------------------------------------------------------------------------------------------------

variable "tenancy_ocid" {}
variable "compartment_ocid" {}
variable "region" {}
variable "oci_service_gateway" {}
variable "VCN_CIDR" {}
variable "useExistingVcn" {}
variable "custom_vcn" {
  type = list(string)
  default = [" "]
}
variable "custom_cidrs" {
  default = "false"
}
variable "vcn_dns_label" {
  default = "airflowvcn"
}
variable "edge_cidr" {}
variable "private_cidr" {}
variable "myVcn" {}
variable "privateSubnet" {
  default = " "
}
variable "edgeSubnet" {
  default = " "
}
# ---------------------------------------------------------------------------------------------------------------------
# Optional variables
# You can modify these.
# ---------------------------------------------------------------------------------------------------------------------

variable "availability_domain" {
  default = "1"
}


