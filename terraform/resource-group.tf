resource "azurerm_resource_group" "aks_poc" {
  name     = "rg-aks-poc-dev-eastus"
  location = "eastus"

  tags = {
    environment = "dev"
    project     = "azure-aks-devops-poc"
    managed_by  = "terraform"
  }
}
