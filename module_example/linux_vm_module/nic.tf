
resource "azurerm_network_interface" "my_nic" {

  for_each = var.nic

  name                = each.key
  location            = var.location
  resource_group_name = azurerm_resource_group.my_rg.name

  ip_configuration {
    name                          = "myNicConfiguration"
    subnet_id                     = lookup(local.subnet, each.value.subnet)
    private_ip_address_allocation = "Dynamic"
    public_ip_address_id          = azurerm_public_ip.my_public_ip.id
  }

  tags = var.tags
}

locals {
  subnet = {
    public_subnet = azurerm_subnet.subnet["public_subnet"].id

    private_subnet = azurerm_subnet.subnet["private_subnet"].id
  }
}

# Connect the security group to the network interface
resource "azurerm_network_interface_security_group_association" "example" {
  network_interface_id      = azurerm_network_interface.my_nic["public_nic"].id
  network_security_group_id = azurerm_network_security_group.my_nsg.id
}
