output rgname{
    value = azurerm_resource_group.vnet_rg.name
}
output vnetname{
    value = azurerm_virtual_network.vnet.name
}
output "virtual_network_id" {
  value = azurerm_virtual_network.vnet.id
}

output "subnet_ids" {
  value = [for subnet in azurerm_subnet.subnet : subnet.id]
}

output "subnet_names" {
  value = [for subnet in azurerm_subnet.subnet : subnet.name]
}

output "subnet_address_prefixes" {
  value = [for subnet in azurerm_subnet.subnet : subnet.address_prefixes]
}
