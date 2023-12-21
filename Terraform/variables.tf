#provider variables 

variable "subscription_id" { 
    description = "usersubscription id "
    type = string
}
variable "client_id" { 
    description = "user client id"
    type = string
}
variable "client_secret" { 
    description = "user client secret"
    type = string
}
variable "tenant_id" { 
    description = "user tenant id"
    type = string
}

#resource group variables

variable "name" { 
    description = "resource group name"
    type = string
}
variable "location" { 
    description = "resource group location"
    type = string
}


#AKS module variables

variable "node_count" {
    description = "number of AKS worker nodes"
    type = number
}
variable "vm_size" {
    description = "size of worker nodes virtual machine"
    type = string
}


#postgresql module variables

variable "storage_mb" {   
    description = "postgresql database size"
    type = number
}
variable "backup_retention_days" { 
    description = "postgresql database backup retention days"
    type = number
}
variable "geo_redundant_backup_enabled" {
    description = "enble backup in another region"
    type = bool 
}
variable "auto_grow_enabled" { 
    description = "enable auto grow"
    type = bool
}
variable "administrator_login" { 
    description = "database administration username"
    type = string
}
variable "administrator_login_password" { 
    description = "database administration password"
    type = string
}

