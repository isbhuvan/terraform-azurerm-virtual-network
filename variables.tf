variable "name" {
  type        = string
  description = "(Required) The name of the virtual network. Changing this forces a new resource to be created."
}

variable "resource_group_name" {
  type        = string
  description = "(Required) The name of the resource group in which to create the virtual network. Changing this forces a new resource to be created."
}

variable "address_space" {
  type        = list(string)
  description = "(Required) The address space that is used the virtual network. You can supply more than one address space."
}

variable "location" {
  type        = string
  description = "(Required) The location/region where the virtual network is created. Changing this forces a new resource to be created."
}

variable "dns_servers" {
  type        = list(string)
  description = "(Optional) List of IP addresses of DNS servers"
  default     = null
}

variable "flow_timeout_in_minutes" {
  type        = number
  description = "(Optional) The flow timeout in minutes for the Virtual Network, which is used to enable connection tracking for intra-VM flows. Possible values are between 4 and 30 minutes."
  default     = null

  validation {
    condition     = var.flow_timeout_in_minutes != null ? var.flow_timeout_in_minutes >= 4 && var.flow_timeout_in_minutes <= 30 : true
    error_message = "Possible values for flow_timeout_in_minutes are between 4 and 30 minutes."
  }
}

variable "tags" {
  type        = map(string)
  description = "(Optional) A mapping of tags to assign to the resource."
  default     = null
}