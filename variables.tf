variable "xen_memory_max" {
  description = "The maximum memory for the VM"
  type        = number
  default     = 4294967296
}

variable "xen_cpus" {
  description = "The number of CPUs for the VM"
  type        = number
  default     = 4
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

variable "xen_network_id" {
  description = "The network for the VM"
  type        = string
}

variable "xen_expected_ip_cidr" {
  description = "The expected IP CIDR for the VM"
  type        = string
}

variable "xen_disk_sr_id" {
  description = "The disk for the VM"
  type        = string
}

variable "xen_disk_name_label" {
  description = "The disk name label for the VM"
  type        = string
}

variable "xen_disk_size" {
  description = "The disk size for the VM"
  type        = number
}

variable "xen_clone_type" {
  description = "The clone type for the VM"
  type        = string
}

variable "xen_tags" {
  description = "The tags for the VM"
  type        = list(string)
}

variable "xen_timeouts" {
  description = "The timeouts for the VM"
  type        = string
  default     = "20m"
}

variable "xen_pool_name" {
  description = "Pool name"
  type        = string
}

variable "xen_destroy_cloud_config_vdi_after_boot" {
  description = "Determines whether the cloud config VDI should be deleted once the VM has booted"
  type        = bool
  default     = false
}

variable "xen_auto_poweron" {
  description = "Determines whether the VM should be automatically powered on after creation"
  type        = bool
  default     = false
}

variable "xen_high_availability" {
  description = "Determines whether the VM should be configured for high availability"
  type        = string
  default     = ""
}
