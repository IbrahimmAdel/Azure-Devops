variable "resource_group_name" {
    description = "name of project resource group"
    type = string
}

variable "resource_group_location" {
    description = "location of project resource group"
    type = string
}

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

#variable "start_ip_address" {
#  description = "Start IP address of AKS nodes"
#  type        = string
#}

#variable "end_ip_address" {
#  description = "End IP address of AKS nodes"
#  type        = string
#}


