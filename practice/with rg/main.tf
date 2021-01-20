provider "azurerm" {
  # whilst the `version` attribute is optional, we recommend pinning to a given version of the Provider
  version = "=2.16.0"
  subscription_id = "b8e1c5a5-a020-4221-ba67-9e7dbbac8b5f"
  client_id = "46a128aa-724e-4f1a-b832-b93f545ac894"
  client_secret = "HaI7L.yUu7S_ni4D-.1TUO91RADkKbs4z."
  tenant_id = "d29bcd12-3280-4f37-b8f2-6e9e2f581472"
  features {}
  skip_provider_registration = true
}
resource "azurerm_container_registry" "acr" {
  name                     = var.registry_name
  resource_group_name      = var.rg_name
  location                 = var.location
  sku                      = var.sku
  admin_enabled            = false
}
