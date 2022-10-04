# NetworkMonitoring
i consider this a 360 display of my cloud skills; creating the needed infrastructure using terraform, configuring on the portal , implementing network security features and logging to a workspace to query using kql

# Project Aim
Sharpenning my terraform skills on how to quickly deploy resources taking up less time. impleementing network security features; Network security groups, Application secuirty groups, Creating inbound and outbound rules, working with log analytics to monitor and log activity so that i can run kql queries on daat collected. 

# Resources used
  ·	A Resource Group
  ·	A Virtual Network
  ·	A Subnet
  ·	A Network Security Group
  ·	2 Application security groups
  ·	Create inbound security rules
  ·	2 virtual machines to act as servers
  ·	An analytics Workspace to log data collected.
  
  
# Walk-Through 
-	I started by using Terraform to provision my infrastructure. I wrote a script that created the Resource group, virtual network, subnets and a network security group.

  See attached code: Infra.tf
-	Once I confirmed the resources were created on the portal, I continued to create the virtual machines. I created two virtual machines that are in running status: one to act as web server and the other to act as the mgmt server.
See image: Created 2 Virtual Machines to act as the Web Server and the Mgmt Server.jpg
-	I then created the Application Security groups that would be connected to the respective virtual machines network interfaces.
See image: ApplicationSecurityGroupsOverview.jpg
-	I then created an Inbound Security rule to the web server to allow outside traffic to get through to the web server.
See image: Inbound Security Rule to the Web Server.jpg

-	I then created an Inbound Security rule to the web server to allow outside traffic to get through to the mgmt server.
See image: Nsg Inbound rule to Mgmt server

-	Created a Log Analytics Workspace named, NetworkingAnalyticsSpace, which will be the collection center of logs collected by the agents.
See image: Creating a Log Analytics Workspace.jpg
-	I enabled monitoring of the Virtual Machines from the logs option on the left side panel. An agent will be used to collect the data that is being logged into the workspace created.
See image: Enabling Monitoring of the VMs to collect logs.jpg

-	I went ahead to connect each virtual machine network interface to its respective application security group.
See image:
-	I then rdp into the myVMMgmt virtual machine and connect to the myVMWeb virtual machine through the web so as to test the network.
Validating that the NSG and ASG Configuration work and that traffic was correctly managed.

