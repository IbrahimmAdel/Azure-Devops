variable "resource_group_name" {
    description = "name of project resource group"
    type = string
}

variable "resource_group_location" {
    description = "location of project resource group"
    type = string
}

variable "node_count" {
    description = "number of AKS worker nodes"
    type = number
}

variable "vm_size" {  
    description = "size of worker nodes virtual machine"
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
