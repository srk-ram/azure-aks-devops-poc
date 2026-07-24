resource "azurerm_virtual_network" "aks" {
  name                = "vnet-aks-poc-dev-eastus"
  location            = azurerm_resource_group.aks_poc.location
  resource_group_name = azurerm_resource_group.aks_poc.name
  address_space       = ["10.0.0.0/16"]
}

resource "azurerm_subnet" "aks" {
  name                 = "snet-aks-dev"
  resource_group_name  = azurerm_resource_group.aks_poc.name
  virtual_network_name = azurerm_virtual_network.aks.name
  address_prefixes     = ["10.0.1.0/24"]
}
