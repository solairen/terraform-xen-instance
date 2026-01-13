resource "xenorchestra_cloud_config" "cloud_init_config" {
  name = var.name_label
  template = templatefile("${local.template_dir}/cloud_config.tftpl", {
    hostname = var.name_label
  })
}

module "example_module" {
  source = "../"

  xen_pool_name        = "xen-pool"
  xen_memory_max       = 4294967296 * local.gigabyte_to_byte
  xen_cpus             = 4
  xen_cloud_config     = xenorchestra_cloud_config.cloud_init_config.template
  xen_name_label       = "xen-vm-label"
  xen_name_description = "Example module"
  xen_template         = "template-name"
  xen_network_id       = "network-adpater-name"
  xen_expected_ip_cidr = "192.168.0.0/16"
  xen_disk_sr_id       = "disk_id"
  xen_disk_name_label  = "disk_name_label"
  xen_disk_size        = 4294967296 * local.gigabyte_to_byte
  xen_clone_type       = "full"
  xen_tags             = ["tag1", "tag2"]
  xen_timeouts         = "20m"
}
