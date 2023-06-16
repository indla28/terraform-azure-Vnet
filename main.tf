provider "azurerm" {
  features {}
}
terraform{
  backend "azurerm"{
     }
}
resource "azurerm_resource_group" "vnet_rg" {
  name     = var.rgname
  location = var.location
}
resource "azurerm_virtual_network" "vnet" {
  name                = var.vnetname
  location            = azurerm_resource_group.vnet_rg.location
  resource_group_name = azurerm_resource_group.vnet_rg.name
  address_space       = var.address_space
  tags = var.tags
}

 resource "azurerm_subnet" "subnet"{
    for_each = var.subnets
    resource_group_name = azurerm_resource_group.vnet_rg.name
    virtual_network_name = azurerm_virtual_network.vnet.name
    name           = each.value["name"]
    address_prefixes = each.value["address_prefixes"]
  }

