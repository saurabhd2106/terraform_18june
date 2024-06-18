module "vm2" {

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


}
