data "oci_core_private_ips" "fss_ip" {
  subnet_id = var.subnet_id

  filter {
    name = "id"
    values = [oci_file_storage_mount_target.airflow_mount_target.private_ip_ids.0]
  }
}

data "oci_identity_availability_domains" "ads" {
  compartment_id = var.compartment_ocid
}

