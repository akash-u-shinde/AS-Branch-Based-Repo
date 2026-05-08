output "resource_group_name" {
    description= "Name of azure resource group"
    value= azurerm_resource_group.main.name
}

output "resource_group_location" {
    description = " location of azure resource group"
    value= azurerm_resource_group.main.location
}


output "resource_group_id" {
    description = " ID of azure resource group"
    value= azurerm_resource_group.main.id
}