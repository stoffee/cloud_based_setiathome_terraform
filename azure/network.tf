resource "azurerm_virtual_network" "seti" {
  name                = "${var.prefix}-network"
  address_space       = ["10.0.0.0/16"]
  location            = azurerm_resource_group.seti.location
  resource_group_name = azurerm_resource_group.seti.name
}

resource "azurerm_subnet" "seti" {
  name                 = "internal"
  resource_group_name  = azurerm_resource_group.seti.name
  virtual_network_name = azurerm_virtual_network.seti.name
  address_prefix       = "10.0.2.0/24"
}

resource "azurerm_public_ip" "seti" {
  name                = "${var.prefix}-publicip"
  resource_group_name = azurerm_resource_group.seti.name
  location            = azurerm_resource_group.seti.location
  allocation_method   = "Static"
}

data "azurerm_public_ip" "seti-public-ip" {
  name                = azurerm_public_ip.seti.name
  resource_group_name = azurerm_resource_group.seti.name
  depends_on = [data.azurerm_public_ip.seti-public-ip]
}


resource "azurerm_network_interface" "seti" {
  name                = "${var.prefix}-nic"
  location            = azurerm_resource_group.seti.location
  resource_group_name = azurerm_resource_group.seti.name

  ip_configuration {
    name                          = "configuration"
    subnet_id                     = azurerm_subnet.seti.id
    private_ip_address_allocation = "Dynamic"
    public_ip_address_id          = azurerm_public_ip.seti.id
  }
}

