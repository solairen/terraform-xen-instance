resource "xenorchestra_vm" "xen_instance" {
  memory_max       = var.memory_max
  cpus             = var.cpus
  cloud_config     = var.cloud_config
  name_label       = var.name_label
  name_description = var.name_description
  template         = var.template

  network {
    network_id       = var.network.network_id
    expected_ip_cidr = var.network.expected_ip_cidr
  }

  disk {
    sr_id      = var.disk.sr_id
    name_label = var.disk.name_label
    size       = var.disk.size
  }

  clone_type = var.clone_type

  tags = var.tags

  timeouts {
    create = var.timeouts
  }

  lifecycle {
    create_before_destroy = var.lifecycle
  }
}