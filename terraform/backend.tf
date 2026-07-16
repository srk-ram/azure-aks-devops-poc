terraform {
  backend "azurerm" {
    resource_group_name  = "rg-aks-poc-tfstate-eastus"
    storage_account_name = "stakspoctfram2607"
    container_name       = "tfstate"
    key                  = "dev.terraform.tfstate"

    use_azuread_auth = true
    use_cli          = true
  }
}
