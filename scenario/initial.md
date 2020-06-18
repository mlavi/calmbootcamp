::: {.body .conbody}
1.	Requirements:
	-	Demonstrate Hot-Add of 1 CPU and 2 GB RAM to DB-Prod VM
	-	Dev VMs need to be in a Protection Domain, demonstrate restore of VM
2.	Constraints
	-	Must use Nutanix Cluster
3.	Assumptions
4.	Risks

Student,

It has come to my attention that our SQL servers have been performing poorly on our existing hardware, so we are looking into a Hyperconverged solution to address this. Before we put an existing load on the 
Nutanix cluster that we have to test on, I would like you to do some testing in the next couple days to get comfortable on the system and make sure the basic functionality we require is there. 

I would like you to build a 3-tier application stack with a database, application, and web servers. After you verify that works, clone the servers to another network and enable data protection on them, then 
verify that it works by deleting a VM, and restoring it. 

:::
