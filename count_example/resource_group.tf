resource "azurerm_resource_group" "my_rg" {

  count = 4

  name = "${var.resource_group_name}-learn-${count.index}"

  location = var.location

  tags = var.tags

}

