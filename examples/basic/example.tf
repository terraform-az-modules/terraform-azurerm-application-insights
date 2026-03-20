provider "azurerm" {
  features {}
}

module "application-insights" {
  source = "../../"
}
