terraform {
  backend "azurerm" {
    resource_group_name  = "rg-cnappuser5-tfstate"
    storage_account_name = "sttfcnappuser5"
    container_name       = "tfstate-dev"
    key                  = "dev.terraform.tfstate"
    use_oidc             = true
    use_azuread_auth     = true
  }
}
