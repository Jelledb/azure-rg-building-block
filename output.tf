output "rgid" {
  value = azurerm_resource_group.resource_group-rg.name
}

output "rgtags" {
  value = azurerm_resource_group.resource_group.tags
}