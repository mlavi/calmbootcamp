::: {.body .conbody}
1. Production Networking Information:
	-	VLAN ID-	0
	-	Default Gateway- 172.31.0.1
	-	Network ID-	172.31.0.0
	-	Subnet Mask-	255.255.255.0
	-	IP Pool:
		-	Start- 172.31.0.210
		-	End- 172.31.0.230
2. Dev Network Information:
	-	VLAN ID-	101
	-	Default Gateway- 172.31.101.1
	-	Network ID-	172.31.101.0
	-	Subnet Mask-	255.255.255.0
	-	IP Pool:
		-	None
		
Student,

Based on the requirements that were given to me, I would recommend making two networks, one named Prod, the other Dev. For the Prod network, you will want it to be a managed network on VLAN0, and use the 172.31.0.0/24 network, and use 
172.31.0.210 - 172.31.0.230 for the IP Pool.
For the Dev environment, use an unmanaged network on VLAN 101 using the 172.31.101.0/24 network. 

Respectfully,

Net Admin
:::