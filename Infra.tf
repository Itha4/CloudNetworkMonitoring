terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "3.16.0"
    }

}
}


#Configure the Microsft Azure Provider
provider "azurerm" {
  #To use ServicePrincipal to authenticate store it as as an environment variable then export it for use in terraform.
    features {}    
 
 }

 resource "azurerm_resource_group" "resourceGroup" {
    name = "NetworkRG-1"
    location = "East US"
   
 }

 resource "azurerm_virtual_network" "virtualNetwork" {
   
   name = "virtualNetwork1"
   location = azurerm_resource_group.resourceGroup.location
   resource_group_name = azurerm_resource_group.resourceGroup.name
   address_space = ["10.0.0.0/16"]
 }


 resource "azurerm_subnet" "subnet1" {
   name = "Learn"
   resource_group_name = "NetworkRG-1"
   virtual_network_name ="virtualNetwork1"
   address_prefixes = ["10.0.1.0/24"]
 }
 
 resource "azurerm_network_security_group" "myNsg" {
    name = "myNsg"
    location = "East US"
    resource_group_name = "NetworkRG-1"

   
 }

