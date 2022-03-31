#######################
## SQL Server - Main ##
#######################

# Create the SQL Server 
resource "azurerm_mssql_server" "kopi-sql-server" {
  name                          = "sqlserver98678" # NOTE: needs to be globally unique
  resource_group_name           = data.azurerm_resource_group.rg_name.name
  location                      = data.azurerm_resource_group.rg_name.location
  version                       = "12.0"
  administrator_login           = "azadmin"
  administrator_login_password  = "Password@123"
  public_network_access_enabled = false
}

# Create a the SQL database 
resource "azurerm_sql_database" "kopi-sql-db" {
  depends_on = [azurerm_mssql_server.kopi-sql-server]

  name                = "kopi-db"
  resource_group_name = data.azurerm_resource_group.rg_name.name
  location            = data.azurerm_resource_group.rg_name.location
  server_name         = azurerm_mssql_server.kopi-sql-server.name
  edition             = "Standard"
  collation           = "Latin1_General_CI_AS"
  max_size_bytes      = "10737418240"
  zone_redundant      = false
  read_scale          = false
}