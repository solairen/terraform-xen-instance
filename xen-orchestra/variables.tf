variable "xen_memory_max" {
  description = "The maximum memory for the VM"
  type        = number
}

variable "xen_cpus" {
  description = "The number of CPUs for the VM"
  type        = number
}

variable "xen_cloud_config" {
  description = "The cloud config for the VM"
  type        = string
}

variable "xen_name_label" {
  description = "The name label for the VM"
  type        = string
}

variable "xen_name_description" {
  description = "The name description for the VM"
  type        = string
}

variable "xen_template" {
  description = "The template for the VM"
  type        = string
}

variable "xen_network" {
  description = "The network for the VM"
  type = object({
    network_id       = string
    expected_ip_cidr = string
  })
}

variable "xen_disk" {
  description = "The disk for the VM"
  type = object({
    sr_id      = string
    name_label = string
    size       = number
  })
}

variable "xen_clone_type" {
  description = "The clone type for the VM"
  type        = string
}

variable "xen_tags" {
  description = "The tags for the VM"
  type        = map(string)
}

variable "xen_timeouts" {
  description = "The timeouts for the VM"
  type        = string
}

variable "xen_lifecycle" {
  description = "The lifecycle for the VM"
  type        = bool
}