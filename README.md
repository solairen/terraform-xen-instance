# Terraform Xen Orchestra Module

## About

This project provides a Terraform module to manage Xen Orchestra virtual machines. The module allows you to define and manage various aspects of a VM, such as memory, CPUs, network, disk, and more.

## How to Use

### Prerequisites

- Terraform installed on your machine.
- Access to a Xen Orchestra instance.
- Properly configured SSH and GPG keys.

### Devcontainer

This project contains `devcontainer` configuration that will allow to spin developer environment using `VSCode`.

To run it inside `devcontainer`, press `F1` and select `Reopen in Container`.

Supported OS is Linux (works also on WSL)

Docker is required.

Dev Containers extension for VSCode is required.

### Installation

To install this module, add the following to your Terraform configuration:

```hcl
module "xen_vm" {
  source = "terraform-xen-instance/vms/module"
  ...
}
```

### Using module

```hcl
resource "xenorchestra_cloud_config" "nexus_cloud_init_config" {
  name = var.nexus_name_label
  template = templatefile("${local.template_dir}/cloud_config.tftpl", {
    hostname = var.nexus_name_label
  })
}

module "xen_vm" {
  source = "terraform-xen-instance/vms/module"

  xen_pool_name        = "xen-pool"
  xen_memory_max       = 4294967296
  xen_cpus             = 4
  xen_cloud_config     = "xenorchestra_cloud_config.nexus_cloud_init_config.template"
  xen_name_label       = "xen-vm-label"
  xen_name_description = "Description"
  xen_template         = "template-name"
  xen_network_id       = "network-adpater-name"
  xen_expected_ip_cidr = "192.168.0.0/16"
  xen_disk_sr_id       = "disk_id"
  xen_disk_name_label  = "disk_label"
  xen_disk_size        = 4294967296
  xen_clone_type       = "full"
  xen_tags             = ["tag1", "tag2"]
  xen_timeouts         = "20m"
}
```

## Contributing

Please read CONTRIBUTING.md for details on our code of conduct, and the process for submitting pull requests to us.

## License

This project is licensed under the MIT License - see the LICENSE file for details.