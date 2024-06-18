resource "azurerm_virtual_network" "main" {
  name                = var.vnet_name
  address_space       = var.cidr_block
  location            = azurerm_resource_group.my_rg.location
  resource_group_name = azurerm_resource_group.my_rg.name
}