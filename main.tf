# Configure the Microsoft Azure provider
provider "azurerm" {
  features {}
}

# Create a Resource Group if it doesn’t exist
resource "azurerm_resource_group" "resource_group" {
  name     = var.rgname
  tags = {
    source = "terraform"
    environment = var.environment
    projectName = var.projectName
  }
  location = "West Europe"
}