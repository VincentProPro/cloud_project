# We strongly recommend using the required_providers block to set the
# Azure Provider source and version being used
terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=3.0.0"
    }
  }
}

# Configure the Microsoft Azure Provider
provider "azurerm" {
  skip_provider_registration = true # This is only required when the User, Service Principal, or Identity running Terraform lacks the permissions to register Azure Resource Providers.
  # client_id       = "0eac8f5f-6d0c-49e2-8dca-9e1bb41e3b65"
  # client_secret   = "U~s8Q~EkZxeBRY5oYKUrQcSl3.VmuFQnzhpOEdn4"
  # tenant_id       = "901cb4ca-b862-4029-9306-e5cd0f6d9f86"
  # subscription_id = "1eb5e572-df10-47a3-977e-b0ec272641e4"
  features {}
}

# data "azurerm_resource_group" "rs_group" {
#   name = "t-clo-901-cot-0"
# }

# output "id" {
#   value = data.azurerm_resource_group.rs_group.id
# }
# output "name" {
#   value = data.azurerm_resource_group.rs_group.name
# }


# data "azurerm_dev_test_lab" "dvtstlab" {
#   name                = "t-clo-901-cot-0"
#   resource_group_name = "t-clo-901-cot-0"
# }

# output "unique_identifier" {
#   value = data.azurerm_dev_test_lab.dvtstlab.unique_identifier
# }
# output "lab_name" {
#   value = data.azurerm_dev_test_lab.dvtstlab.name
# }

# data "azurerm_dev_test_virtual_network" "network" {
#   name                = "t-clo-901-cot-0"
#   lab_name            = "t-clo-901-cot-0"
#   resource_group_name = "t-clo-901-cot-0"
# }

# output "lab_subnet_name" {
#   value = data.azurerm_dev_test_virtual_network.network.allowed_subnets[0].lab_subnet_name
# }
# output "network_id" {
#   value = data.azurerm_dev_test_virtual_network.network.id
# }

# resource "azurerm_dev_test_linux_virtual_machine" "example" {
#   name                   = "example-vm"
#   lab_name               = data.azurerm_dev_test_lab.dvtstlab.name
#   resource_group_name    = data.azurerm_resource_group.rs_group.name
#   location               = data.azurerm_resource_group.rs_group.location
#   size                   = "Standard_A4_v2"
#   username               = "epitech"
#   ssh_key                = file("~/.ssh/id_rsa.pub")
#   lab_virtual_network_id = data.azurerm_dev_test_virtual_network.network.id
#   lab_subnet_name        = data.azurerm_dev_test_virtual_network.network.lab_name
#   storage_type           = "Standard"
#   notes                  = "Some notes about this Virtual Machine."
#   allow_claim            = false

#   gallery_image_reference {
#     publisher = "Debian"
#     offer     = "debian-11"
#     sku       = "11"
#     version   = "latest"
#   }
# }

resource "azurerm_dev_test_linux_virtual_machine" "vm" {
  #allow_claim            = true
  name                   = "vmbackup"
  lab_name               = "t-clo-901-cot-0"
  resource_group_name    = "t-clo-901-cot-0"
  location               = "westeurope"
  size                   = "Standard_A4_v2"
  lab_virtual_network_id = "/subscriptions/1eb5e572-df10-47a3-977e-b0ec272641e4/resourcegroups/t-clo-901-cot-0/providers/microsoft.devtestlab/labs/t-clo-901-cot-0/virtualnetworks/t-clo-901-cot-0"
  lab_subnet_name        = "t-clo-901-cot-0Subnet"
  username               = "epitech"
  password               = "Test1234$%"
  #ssh_key                = file("/home/vincent/.ssh/id_rsa.pub")
  ssh_key                = file("/home/vincent/vpscloud.pub")
  storage_type           = "Standard"
  notes                  = "Some notes about this Virtual Machine."
  
  #allow_claim           = false
  #disallow_public_ip_address = false
  


  gallery_image_reference {
    publisher = "Debian"
    offer     = "debian-11"
    sku       = "11"
    version   = "latest"
  }
}


resource "azurerm_dev_test_linux_virtual_machine" "vm" {
  #allow_claim            = true
  name                   = "slave"
  lab_name               = "t-clo-901-cot-0"
  resource_group_name    = "t-clo-901-cot-0"
  location               = "westeurope"
  size                   = "Standard_A4_v2"
  lab_virtual_network_id = "/subscriptions/1eb5e572-df10-47a3-977e-b0ec272641e4/resourcegroups/t-clo-901-cot-0/providers/microsoft.devtestlab/labs/t-clo-901-cot-0/virtualnetworks/t-clo-901-cot-0"
  lab_subnet_name        = "t-clo-901-cot-0Subnet"
  username               = "epitech"
  password               = "Test1234$%"
  #ssh_key                = file("/home/vincent/.ssh/id_rsa.pub")
  ssh_key                = file("/home/vincent/vpscloud.pub")
  storage_type           = "Standard"
  notes                  = "Some notes about this Virtual Machine."
  
  #allow_claim           = false
  #disallow_public_ip_address = false
  


  gallery_image_reference {
    publisher = "Debian"
    offer     = "debian-11"
    sku       = "11"
    version   = "latest"
  }
}

resource "azurerm_dev_test_linux_virtual_machine" "vm" {
  #allow_claim            = true
  name                   = "vmprimaire"
  lab_name               = "t-clo-901-cot-0"
  resource_group_name    = "t-clo-901-cot-0"
  location               = "westeurope"
  size                   = "Standard_A4_v2"
  lab_virtual_network_id = "/subscriptions/1eb5e572-df10-47a3-977e-b0ec272641e4/resourcegroups/t-clo-901-cot-0/providers/microsoft.devtestlab/labs/t-clo-901-cot-0/virtualnetworks/t-clo-901-cot-0"
  lab_subnet_name        = "t-clo-901-cot-0Subnet"
  username               = "epitech"
  password               = "Test1234$%"
  #ssh_key                = file("/home/vincent/.ssh/id_rsa.pub")
  ssh_key                = file("/home/vincent/vpscloud.pub")
  storage_type           = "Standard"
  notes                  = "Some notes about this Virtual Machine."
  
  #allow_claim           = false
  #disallow_public_ip_address = false
  


  gallery_image_reference {
    publisher = "Debian"
    offer     = "debian-11"
    sku       = "11"
    version   = "latest"
  }
}
