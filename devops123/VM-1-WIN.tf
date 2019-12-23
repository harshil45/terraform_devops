resource "azurerm_network_interface" "rg123" {
 #count = "${var.VM-Count-WIN}"
 name                = "${var.NIC}-NIC"
 location            = "${var.VM-Location-WIN}"
 resource_group_name = "${azurerm_resource_group.rg123.name}"  
 ip_configuration {
   name                          = "${var.VM-Name-WIN}-NIC-IPConfig"
   subnet_id                     = "${var.subscription}${var.subscriptionsid}${var.resourcegroups}${var.resourceGroupsname}${var.pro}${var.virtualnetworkname}${var.subnet}${var.subnetname}"
   private_ip_address_allocation = "dynamic"
   public_ip_address_id          = "${azurerm_public_ip.rg123.id}"
 }
}

resource "azurerm_virtual_machine" "rg123" {
   # count                 = "${var.VM-Count-WIN}"
    name                  = "${var.VM-Name-WIN}"
    location              = "${var.VM-Location-WIN}"
    resource_group_name   = "${azurerm_resource_group.rg123.name}"
    network_interface_ids = ["${azurerm_network_interface.rg123.id}"]
    vm_size               = "${var.VM-Size-WIN}" 
   # availability_set_id   = "${element(var.AS-ID-1W, count.index)}"

    storage_os_disk {
        name              = "${var.VM-Name-WIN}-Disk"
        caching           = "ReadWrite"
        create_option     = "FromImage"
        managed_disk_type = "Premium_LRS"
    } 

    storage_image_reference {
        publisher = "MicrosoftWindowsServer"
        offer     = "WindowsServer"
        sku       = "2016-Datacenter"
        version   = "latest"
    }

    os_profile {
        computer_name  = "Windows"
        admin_username = "${var.VM-UN-WIN}"
        admin_password = "${var.VM-PW-WIN}"
    }

    os_profile_windows_config {
        enable_automatic_upgrades = false
	    provision_vm_agent = true
    }
    #tags  = "${merge(map("${element(var.VM-WIN-Tags-Key, count.index)}","${element(var.VM-WIN-Tags-Value, count.index)}","${element(var.VM-WIN-Tags-Key, count.index+1)}","${element(var.VM-WIN-Tags-Value, count.index+1)}"))}"
}

#Dependency = Resource-Group
resource "azurerm_public_ip" "rg123" {
  #count = "${var.VM-Count-WIN}"
  name                         = "${var.VM-Name-WIN}-IP"
  location                     = "${var.VM-Location-WIN}"
  resource_group_name          = "${azurerm_resource_group.rg123.name}"
  public_ip_address_allocation = "dynamic"
  ip_version                   = "IPv4"
}
