data "xenorchestra_template" "template" {
  name_label = var.xen_template
}

resource "xenorchestra_vm" "main" {
  memory_max       = var.xen_memory_max
  cpus             = var.xen_cpus
  cloud_config     = var.xen_cloud_config
  name_label       = var.xen_name_label
  name_description = var.xen_name_description
  template         = var.data.xenorchestra_template.template.id

  network {
    network_id       = var.xen_network_id
    expected_ip_cidr = var.xen_expected_ip_cidr
  }

  disk {
    sr_id      = var.xen_disk_sr_id
    name_label = var.xen_disk_name_label
    size       = var.xen_disk_size
  }

  clone_type = var.xen_clone_type

  tags = var.xen_tags

  timeouts {
    create = var.xen_timeouts
  }
}