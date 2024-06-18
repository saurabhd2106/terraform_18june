resource "azurerm_resource_group" "my_rg" {

  count = length(var.resource_group_name)

  name = var.resource_group_name[count.index]

  location = var.location

  tags = var.tags

}

