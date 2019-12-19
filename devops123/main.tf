resource "azurerm_resource_group" "rg123"{
name = "${var.RG-1-Name}"
location = "${var.RG-1-Location}"
tags = "${merge(map("${var.RG-Tags-1-Key}","${var.RG-Tags-1-Value}"))}" 
}
