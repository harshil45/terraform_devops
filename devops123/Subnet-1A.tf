#Creation of Subnet and Binding of subnet to respective VNET
#Linking of Subnets with Security Groups and Enabling Service Endpoints
/*
resource "azurerm_subnet" "1A" {
  name                 = "${var.Subnet-1A-Name}"
  resource_group_name = "${azurerm_resource_group.1.name}"
  virtual_network_name = "${azurerm_virtual_network.1.name}"
  address_prefix       = "${var.Subnet-1A-CIDR}"
  #network_security_group_id = "${azurerm_network_security_group.1.id}"
  #service_endpoints = ["Microsoft.Storage"]
}
*/

resource "azurerm_subnet" "rg123" {
  #count =               "${var.Subnet-Count-1A}"
  name                 = "${var.Subnet-Name-1A}"
  resource_group_name = "${azurerm_resource_group.rg123.name}"
  virtual_network_name = "${azurerm_virtual_network.rg123.name}"
  address_prefix       = "${var.Subnet-CIDR-1A}"
  network_security_group_id = "${azurerm_network_security_group.rg123.id}"
  #service_endpoints = ["Microsoft.Storage"]
}


output "ID-of-Subnet-A" {
	value = "${azurerm_subnet.rg123.*.id}"
}
