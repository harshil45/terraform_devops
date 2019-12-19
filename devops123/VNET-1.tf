#Creation of Virtual Network
resource "azurerm_virtual_network" "rg123" {
  name                = "${var.VNET-1-Name}"
  address_space       = ["${var.VNET-1-CIDR}"]
  location            = "${var.VNET-1-Location}"
  resource_group_name = "${azurerm_resource_group.rg123.name}" 
  tags = "${merge(map("${var.VNET-Tags-1-Key}","${var.VNET-Tags-1-Value}"))}" 
}
