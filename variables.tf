variable rgname{
    type =  string
    default="RG_Vnet"
    description = "the name of resource group"
}
variable location{
    type = string
    default = "East US 2"
    description = "location of resource group"
}
variable tags{
    type = map(string)
    default = {
      "environment" = "development"
      "owner" = "devopsTeam"
    }
    description = "tags used for deployment"
}
variable vnetname{
    type = string
    default = "MyVnet0105"
    description = "name of virtual network"
}
variable address_space{
    type = list(any)
    default = ["10.0.0.0/16"]
    description = "IP address/ CIDR of Vnet"
}
variable subnets{
    type = map(any)
    default = {
        subnet1={
            name = "subnetA"
            address_prefixes = ["10.0.1.0/24"]
        }
        subnet2={
            name = "subnetB"
            address_prefixes = ["10.0.2.0/24"]
        }
        subnet3={
            name = "subnetC"
            address_prefixes = ["10.0.3.0/24"]
        }
        subnet4={
            name = "subnetD"
            address_prefixes = ["10.0.4.0/24"]
        }
    }
    description = "IP adresses and CIDR for subnets"
}
