variable rgname{
    type =  string
    default="Vnet_RG"
    description = "the name of resource group"
}
variable location{
    type = string
    default = "West Europe"
    description = "location of resource group"
}
variable tags{
    type = map(string)
    default = {
      "environment" = "production"
      "owner" = "devopsTeam"
    }
    description = "tags used for deployment"
}
variable vnetname{
    type = string
    default = "VirtualNetwork"
    description = "name of virtual network"
}
variable address_space{
    type = list(any)
    default = ["15.0.0.0/16"]
    description = "IP address/ CIDR of Vnet"
}
variable subnets{
    type = map(any)
    default = {
        subnet1={
            name = "subnet_1"
            address_prefixes = ["15.0.1.0/24"]
        }
        subnet2={
            name = "subnet_2"
            address_prefixes = ["15.0.2.0/24"]
        }
        subnet3={
            name = "subnet_3"
            address_prefixes = ["15.0.3.0/24"]
        }
        subnet4={
            name = "subnet_4"
            address_prefixes = ["15.0.4.0/24"]
        }
    }
    description = "IP adresses and CIDR for subnets"
}
