terraform {
  backend "azurerm" {
    resource_group_name  = "rg-testbruker1-tfstate"
    storage_account_name = "sttftestbruker1"
    container_name       = "tfstate-dev"
    key                  = "dev.terraform.tfstate"
    use_oidc             = true
    use_azuread_auth     = true
  }
}
