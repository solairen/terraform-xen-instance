variable "memory_max" {
  description = "The maximum memory for the VM"
  type        = number
}

variable "cpus" {
  description = "The number of CPUs for the VM"
  type        = number
}

variable "cloud_config" {
  description = "The cloud config for the VM"
  type        = string
}

variable "name_label" {
  description = "The name label for the VM"
  type        = string
}

variable "name_description" {
  description = "The name description for the VM"
  type        = string
}

variable "template" {
  description = "The template for the VM"
  type        = string
}

variable "network" {
  description = "The network for the VM"
  type = object({
    network_id       = string
    expected_ip_cidr = string
  })
}

variable "disk" {
  description = "The disk for the VM"
  type = object({
    sr_id      = string
    name_label = string
    size       = number
  })
}

variable "clone_type" {
  description = "The clone type for the VM"
  type        = string
}

variable "tags" {
  description = "The tags for the VM"
  type        = map(string)
}

variable "timeouts" {
  description = "The timeouts for the VM"
  type        = string
}

variable "lifecycle" {
  description = "The lifecycle for the VM"
  type        = bool
}