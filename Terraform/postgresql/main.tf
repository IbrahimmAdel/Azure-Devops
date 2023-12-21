resource "azurerm_postgresql_server" "postgresql-server" {
  name                = "project-postgresql-server"
  location            = var.resource_group_location
  resource_group_name = var.resource_group_name

  sku_name = "B_Gen5_2"

  storage_mb                   = var.storage_mb
  backup_retention_days        = var.backup_retention_days
  geo_redundant_backup_enabled = var.geo_redundant_backup_enabled
  auto_grow_enabled            = var.auto_grow_enabled

  administrator_login          = var.administrator_login
  administrator_login_password = var.administrator_login_password
  version                      = "9.5"
  ssl_enforcement_enabled      = true
}


resource "azurerm_postgresql_database" "postgresql-db" {
  name                = "project-postgresql-db"
  resource_group_name = var.resource_group_name
  server_name         = azurerm_postgresql_server.postgresql-server.name
  charset             = "UTF8"
  collation           = "English_United States.1252"

  # prevent the possibility of accidental data loss
  #lifecycle {
   # prevent_destroy = true
  #}
  
}


#resource "azurerm_postgresql_firewall_rule" "allow_aks" {
#  name                = "AllowAKS"
#  resource_group_name = var.resource_group_name
#  server_name         = azurerm_postgresql_server.postgresql-server.name
#  start_ip_address    = var.start_ip_address
#  end_ip_address      = var.end_ip_address
