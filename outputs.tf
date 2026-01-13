output "name" {
  value = xenorchestra_vm.main.*.name_label
}

output "ip" {
  value = xenorchestra_vm.main.*.ipv4_addresses
}

output "ip_single" {
  value = xenorchestra_vm.main.network[0].ipv4_addresses
}
