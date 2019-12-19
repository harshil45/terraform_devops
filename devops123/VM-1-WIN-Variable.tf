/*variable "VM-1-Location-LNX" {
  type    = "string"
  default = "Central US"
}*/

variable "VM-Name-WIN" {
  description = "Windows Virtual Machines Names"
  type = "string"
  default = "VM-1"
  #type = "list"
  #default = ["VM-1", "VM-2", "VM-3", "VM-4", "VM-5", "VM-6"]
  #default = ["${var.RG-Name}", "${var.RG-Name-2}", "${var.RG-Name-3}"]
  #This approach is not working as default cannot contain interpolation.
}

variable "VM-Location-WIN" {
  description = "Names"
  type = "string"
  default = "Central US"
  #default = ["${var.RG-Name}", "${var.RG-Name-2}", "${var.RG-Name-3}"]
  #This approach is not working as default cannot contain interpolation.
}

variable "VM-Size-WIN" {
  description = "Names"
  type = "string"
  default = "Standard_DS1_v2"
  #default = ["${var.RG-Name}", "${var.RG-Name-2}", "${var.RG-Name-3}"]
  #This approach is not working as default cannot contain interpolation.
}

/*variable "VM-1-Size-LNX" {
  type    = "string"
  default = "Standard_DS1_v2"
}
*/  
variable "VM-UN-WIN" {
  description = "Usernames"
  type = "string"
  default = "Murtaza"
  #default = ["${var.RG-Name}", "${var.RG-Name-2}", "${var.RG-Name-3}"]
  #This approach is not working as default cannot contain interpolation.
}

variable "VM-PW-WIN" {
  description = "Names"
  type = "string"
  default = "Celebal@77421" 
  #default = ["${var.RG-Name}", "${var.RG-Name-2}", "${var.RG-Name-3}"]
  #This approach is not working as default cannot contain interpolation.
}


/*variable "VM-1-UN-LNX" {
  type    = "string"
  default = "Murtaza"
}

variable "VM-1-PW-LNX" {
  type    = "string"
  default = "Celebal@77421"
}
*/
/*variable "VM-LNX-Tags-Key" {
  type    = "string"
  default = "Resource-Type"
}*/

variable "VM-WIN-Tags-Key" {
  description = "Names"
  type = "string"
  default = "Resource-Type"
  #default = ["${var.RG-Name}", "${var.RG-Name-2}", "${var.RG-Name-3}"]
  #This approach is not working as default cannot contain interpolation.
}
variable "VM-WIN-Tags-Value" {
  description = "Names"
  type = "string"
  default = "Virtual-Machine"
  #default = ["${var.RG-Name}", "${var.RG-Name-2}", "${var.RG-Name-3}"]
  #This approach is not working as default cannot contain interpolation.
}
/*
variable "Subnet-ID-WIN" {
  description = "Names"
  type = "string"
  default = "/subscriptions/d7001b01-3998-41aa-a39d-e0098472796a/resourceGroups/Harshil-ggs/providers/Microsoft.Network/virtualNetworks/Virtual-Network-1/subnets/Subnet-1"
  #default = ["${var.RG-Name}", "${var.RG-Name-2}", "${var.RG-Name-3}"]
  #This approach is not working as default cannot contain interpolation.
}
*/
/*
variable "VM-Count-WIN" {
  type    = "string"
  default = "6"
}
*/
/*
variable "AS-ID-1W" {
  description = "Avl-Set-ID's"
  type = "list"
  default = ["","/subscriptions/a5cc9947-7c9d-46da-8fee-9e681551fa8c/resourceGroups/RG-1/providers/Microsoft.Compute/availabilitySets/AvlS-1","","","/subscriptions/a5cc9947-7c9d-46da-8fee-9e681551fa8c/resourceGroups/RG-1/providers/Microsoft.Compute/availabilitySets/AvlS-2","/subscriptions/a5cc9947-7c9d-46da-8fee-9e681551fa8c/resourceGroups/RG-1/providers/Microsoft.Compute/availabilitySets/AvlS-1"]
  #default = ["${var.RG-Name}", "${var.RG-Name-2}", "${var.RG-Name-3}"]
  #This approach is not working as default cannot contain interpolation.
}
*/

variable "subscription" {
  description = "Names"
  type = "string"
  default = "/subscriptions/"
  #default = ["${var.RG-Name}", "${var.RG-Name-2}", "${var.RG-Name-3}"]
  #This approach is not working as default cannot contain interpolation.
}
variable "subscriptionsid" {
  description = "Names"
  type = "string"
}
variable "resourcegroups" {
  description = "Names"
  type = "string"
  default = "/resourceGroups/"
}
variable "resourceGroupsname" {
  description = "Names"
  type = "string"
}
variable "pro" {
  description = "Names"
  type = "string"
  default = "/providers/Microsoft.Network/virtualNetworks/"
}
variable "virtualnetworkname" {
  description = "Names"
  type = "string"
}
variable "subnet" {
  description = "Names"
  type = "string"
  default = "/subnets/"
}
variable "subnetname" {
  description = "Names"
  type = "string"
}

