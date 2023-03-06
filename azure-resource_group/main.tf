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

resource "azurerm_network_security_group" "rg1_sg1" {
  name                = "rg1-security-group"
  location            = azurerm_resource_group.demo1.location
  resource_group_name = azurerm_resource_group.demo1.name
}

resource "azurerm_virtual_network" "rg1-vn1" {
  name                = "rg1-network"
  location            = azurerm_resource_group.demo1.location
  resource_group_name = azurerm_resource_group.demo1.name
  address_space       = ["10.0.0.0/16"]
  dns_servers         = ["10.0.0.4", "10.0.0.5"]

  subnet {
    name           = "rg1-vn1-subnet1"
    address_prefix = "10.0.1.0/24"
  }

  subnet {
    name           = "rg1-vn1-subnet2"
    address_prefix = "10.0.2.0/24"
    security_group = azurerm_network_security_group.rg1_sg1.id
  }

  tags = {
    environment = "Testing"
  }
}