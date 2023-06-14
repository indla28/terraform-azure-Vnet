provider "azurerm" {
  features {}
  version         = "3.56.0"
  client_id       = "5b76dc77-89e0-4da5-9775-f372c2a741d7"
  client_secret   = "BQx8Q~WbjeaPvJJODVt4XhjUH-6vaaD2ObWufbzq"
  tenant_id       = "ef89a6fd-6903-484f-bea5-f2a3f5c8cbd2"
  subscription_id = "90ea7441-2e11-46b0-b9af-4db22e508db0"
}
terraform{
  backend "local"{
    path="E:/devops_backend/vmfile.tfstate"
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

