#Creation of Network Security Group
resource "azurerm_network_security_group" "rg123" {
 # count =               "${var.Subnet-Count-1A}"
  name                = "${var.Subnet-Name-1A}-NSG"
  location            = "${var.VNET-1-Location}"
  resource_group_name = "${azurerm_resource_group.rg123.name}"
    security_rule {
    name                       = "RDP-In"
    priority                   = 100
    direction                  = "Inbound"
    access                     = "Allow"
    protocol                   = "*"
    source_port_range          = "*"
    destination_port_range     = "3389"
    source_address_prefix      = "*"
    destination_address_prefix = "*"
  }

  security_rule {
    name                       = "SSH-In"
    priority                   = 200
    direction                  = "Inbound"
    access                     = "Allow"
    protocol                   = "*"
    source_port_range          = "*"
    destination_port_range     = "22"
    source_address_prefix      = "*"
    destination_address_prefix = "*"
  }
 /* tags{
    Application-Name = "${var.NSG-Application-Tags}"
    Subsystem-Name = "${var.NSG-Subsystem-Tags}"
  }*/
}

    #network_interface_ids = ["${element(azurerm_network_interface.1L.*.id, count.index)}"]

/*#Addition of rules in NSG or Rule-Binding
resource "azurerm_network_security_rule" "Rule-1" {
  count =               "${var.Subnet-Count-1A}"
  name                        = "RDP-In"
  priority                    = 100
  direction                   = "Inbound"
  access                      = "Allow"
  protocol                    = "*"
  source_port_range           = "*"
  destination_port_range      = "3389"
  source_address_prefix       = "*"
  destination_address_prefix  = "*"
  resource_group_name         = "${azurerm_resource_group.1.name}"
  network_security_group_name = "${element(azurerm_network_security_group.1.*.id, count.index)}"
}

resource "azurerm_network_security_rule" "Rule-2" {
  count =               "${var.Subnet-Count-1A}"
  name                        = "SSH-In"
  priority                    = 200
  direction                   = "Inbound"
  access                      = "Allow"
  protocol                    = "*"
  source_port_range           = "*"
  destination_port_range      = "22"
  source_address_prefix       = "*"
  destination_address_prefix  = "*"
  resource_group_name         = "${azurerm_resource_group.1.name}"
  network_security_group_name = "${element(azurerm_network_security_group.1.*.id, count.index)}"
}



resource "azurerm_network_security_group" "test" {
  name                = "acceptanceTestSecurityGroup1"
  location            = "${azurerm_resource_group.test.location}"
  resource_group_name = "${azurerm_resource_group.test.name}"


}*/