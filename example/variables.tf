variable "pool_name" {
  description = "Set Xen Pool name."
  type        = string
  sensitive   = false
}

variable "vm_template" {
  description = "Set VM template name."
  type        = string
  sensitive   = false
}

variable "network_adapter" {
  description = "Set network adapter name."
  type        = string
  sensitive   = false
}

variable "disk_id" {
  description = "Set Disk ID."
  type        = string
}

variable "name_label" {
  description = "Set name label."
  type        = string
  sensitive   = false
}

variable "cpus" {
  description = "Set number of CPU in listener."
  sensitive   = false
  type        = number
  default     = 1
}

variable "memory_size" {
  description = "Set number of RAM in (values in MB)."
  sensitive   = false
  type        = number
  default     = 1024
}

variable "disk_size" {
  description = "Set number of HDD space in (values in GB)."
  sensitive   = false
  type        = number
  default     = 50
}

variable "disk_name_label" {
  description = "Set disk name label."
  type        = string
  sensitive   = false
}

variable "ansible_deployment_type" {
  description = "Set deployment type for Ansible."
  sensitive   = false
  type        = string
}

variable "workspace_type" {
  description = "Workspace type"
  type        = string
  default     = "test"
  sensitive   = false
}

variable "timeouts_create" {
  description = "Set timeouts for create."
  type        = string
  default     = "20m"
  sensitive   = false
}

variable "tags" {
  description = "Tags for the Kubernetes master VM"
  type        = list(string)
  default     = ["test", "kubernetes"]
  sensitive   = false
}

variable "hosts_password" {
  description = "Password for the hosts"
  type        = string
  sensitive   = false
}

variable "docker_image" {
  description = "Set Docker image."
  type        = string
  sensitive   = false
}
