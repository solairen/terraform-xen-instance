resource "xenorchestra_vm" "main" {
  memory_max       = var.xen_memory_max
  cpus             = var.xen_cpus
  cloud_config     = var.xen_cloud_config
  name_label       = var.xen_name_label
  name_description = var.xen_name_description
  template         = var.xen_template

  network {
    network_id       = var.xen_network.network_id
    expected_ip_cidr = var.xen_network.expected_ip_cidr
  }

  disk {
    sr_id      = var.xen_disk.sr_id
    name_label = var.xen_disk.name_label
    size       = var.xen_disk.size
  }

  clone_type = var.xen_clone_type

  tags = var.xen_tags

  timeouts {
    create = var.xen_timeouts
  }
}