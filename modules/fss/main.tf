resource "oci_file_storage_file_system" "airflow_dags" {
  availability_domain = var.availability_domain
  compartment_id      = var.compartment_ocid
  display_name = "Airflow Dags"
}

resource "oci_file_storage_export_set" "airflow_export_set" {
  mount_target_id = oci_file_storage_mount_target.airflow_mount_target.id
  display_name      = "Airflow Dags Export"
}

resource "oci_file_storage_export" "airflow_export_mount" {
  export_set_id  = oci_file_storage_export_set.airflow_export_set.id
  file_system_id = oci_file_storage_file_system.airflow_dags.id
  path           = "/airflow"

  export_options {
    source                         = var.vcn_cidr
    access                         = "READ_WRITE"
    identity_squash                = "NONE"
    require_privileged_source_port = true
  }
}

resource "oci_file_storage_mount_target" "airflow_mount_target" {
  availability_domain = var.availability_domain
  compartment_id      = var.compartment_ocid
  subnet_id           = var.subnet_id
}

