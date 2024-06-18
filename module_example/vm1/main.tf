module "vm1" {

  source = "../linux_vm_module"

  resource_group_name = "myrg-saurabh"

  location = "West Europe"

  tags = { "env" : "production" }

  vnet_name = "myvnet-saurabh"

  cidr_block = ["10.0.0.0/16"]

  subnet_cidr_block = ["10.0.2.0/24"]

  subnet_name = "mysubnet-saurabh"

  public_ip_address = "mypublicip-saurabh"

  diskSize = "Standard_DS1_v2"

  nic_name = "mynic_saurabh"

  virtualMachineName = "myvm-saurabh"

  nsg_name = "mynsg-saurabh"

  subnets = {
    public_subnet = {
      cidr_block = ["10.0.2.0/24"]
    }

    private_subnet = {
      cidr_block = ["10.0.3.0/24"]

    }

    
  }

  inbound_traffic = {
    allow_http = {

    priority                   = 1002
    direction                  = "Inbound"
    access                     = "Allow"
    protocol                   = "Tcp"
    source_port_range          = "*"
    destination_port_range     = "80"
    source_address_prefix      = "*"
    destination_address_prefix = "*"

    }

    allow_ssh = {

    priority                   = 1001
    direction                  = "Inbound"
    access                     = "Allow"
    protocol                   = "Tcp"
    source_port_range          = "*"
    destination_port_range     = "22"
    source_address_prefix      = "*"
    destination_address_prefix = "*"

    }
  }

  nic = {
    public_nic = {
      subnet = "public_subnet"
    }

    private_nic = {
      subnet = "private_subnet"
    }
  }


}
