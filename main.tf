resource "azurerm_virtual_network" "vnet" {
  name                    = var.name
  resource_group_name     = var.resource_group_name
  address_space           = var.address_space
  location                = var.location
  dns_servers             = var.dns_servers
  flow_timeout_in_minutes = var.flow_timeout_in_minutes
  tags                    = var.tags
}