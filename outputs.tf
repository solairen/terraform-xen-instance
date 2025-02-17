output "name" {
  value = xenorchestra_vm.xen_instance.*.name_label
}

output "ip" {
  value = xenorchestra_vm.xen_instance.*.ipv4_addresses
}