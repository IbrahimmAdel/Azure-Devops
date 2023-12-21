resource "azurerm_kubernetes_cluster" "aks" {
  name                = "project-aks"
  location            = var.resource_group_location
  resource_group_name = var.resource_group_name

  dns_prefix          = "aks"

  default_node_pool {
    name       = "default"
    node_count = var.node_count
    vm_size    = var.vm_size    
  }

  service_principal {
    client_id     = var.client_id
    client_secret = var.client_secret
  }
  
}


