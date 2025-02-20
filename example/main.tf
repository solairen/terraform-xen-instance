resource "xenorchestra_cloud_config" "cloud_init_config" {
  name = var.name_label
  template = templatefile("${local.template_dir}/cloud_config.tftpl", {
    hostname = var.name_label
  })
}

module "example_module" {
  source = "../module"

  xen_pool_name        = var.pool_name
  xen_memory_max       = var.memory_size * local.gigabyte_to_byte
  xen_cpus             = var.cpus
  xen_cloud_config     = xenorchestra_cloud_config.cloud_init_config.template
  xen_name_label       = var.name_label
  xen_name_description = "Example module"
  xen_template         = var.vm_template
  xen_network_id       = var.network_adapter
  xen_expected_ip_cidr = "192.168.0.0/16"
  xen_disk_sr_id       = var.disk_id
  xen_disk_name_label  = var.disk_name_label
  xen_disk_size        = var.disk_size * local.gigabyte_to_byte
  xen_clone_type       = "full"
  xen_tags             = var.tags
  xen_timeouts         = var.timeouts_create
}