/*
variable "Subnet-1A-Name" {
  type    = "string"
  default = "Subnet-A"
}
*/
/*
variable "Subnet-1A-CIDR" {
  type    = "string"
  default = "10.0.1.0/24"
}
*/

variable "Subnet-Name-1A" {
  description = "Names"
  type="string"
  default="subnet-1"
  #type = "list"
  #default = ["Subnet-1", "Subnet-2", "Subnet-3"]
  #default = ["${var.RG-Name}", "${var.RG-Name-2}", "${var.RG-Name-3}"]
  #This approach is not working as default cannot contain interpolation.
}

variable "Subnet-CIDR-1A" {
  description = "Subnet-Address Space"
  type = "string"
  #default = ["10.0.1.0/24", "10.0.2.0/24", "10.0.3.0/24"]
  default="10.0.1.0/24"
  #default = ["${var.RG-Name}", "${var.RG-Name-2}", "${var.RG-Name-3}"]
  #This approach is not working as default cannot contain interpolation.
}
/*
variable "Subnet-Count-1A" {
  type    = "string"
  default = "3"
}
*/