# resource "azurerm_resource_group" "rg_name" {
#   name     = "example-resources"
#   location = "West Europe"
# }

resource "azurerm_key_vault" "keyvault" {
  name                        = var.keyvault_name
  location                    = data.azurerm_resource_group.rg_name.location
  resource_group_name         = data.azurerm_resource_group.rg_name.name
  enabled_for_disk_encryption = true
  tenant_id                   = data.azurerm_client_config.current.tenant_id
  soft_delete_retention_days  = 7
  purge_protection_enabled    = false

  sku_name = "standard"

  access_policy {
    tenant_id = data.azurerm_client_config.current.tenant_id
    object_id = data.azurerm_client_config.current.object_id

    key_permissions = [
    #  "Backup", "Create", "Decrypt", "Delete", "Encrypt", "Get", "Import", "List", "Purge", "Recover", "Restore", "Sign", "UnwrapKey", "Update", "Verify", "WrapKey"
    "Backup", "Delete", "Get", "List", "Purge", "Recover", "Restore"
    ]

    secret_permissions = [
      # "Backup", "Create", "Decrypt", "Delete", "Encrypt", "Get", "Import", "List", "Purge", "Recover", "Restore", "Sign", "UnwrapKey", "Update", "Verify", "WrapKey"
      "Backup", "Delete", "Get", "List", "Purge", "Recover", "Restore", "Set"
    ]

    storage_permissions = [
       #"Backup", "Create", "Decrypt", "Delete", "Encrypt", "Get", "Import", "List", "Purge", "Recover", "Restore", "Sign", "UnwrapKey", "Update", "Verify", "WrapKey"
       "Backup", "Delete", "Get", "List", "Purge", "Recover", "Restore", "Set"
    ]
  }
}


resource "azurerm_key_vault_secret" "vault_secret" {
  name         = var.keyvault_secrete_name
  value        = var.keyvault_secrete_password
  key_vault_id = azurerm_key_vault.keyvault.id
}