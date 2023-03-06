resource "azurerm_resource_group" "demo1" {
  name     = "testResourceGroup1"
  location = "East US"

  tags = {
    environment = "Testing"
  }
}

resource "azurerm_resource_group" "demo2" {
  name     = var.rg2_name
  location = var.rg2_location

  tags = {
    environment = var.rg2_tags
  }
}

