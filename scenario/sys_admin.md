::: {.body .conbody}
1. Number of VMs
	-	Production:
		-	Database:	1
		-	Application:	1
		-	Web:	1
2. Sizing Requirements:
	-	Database:
		-	OS: Windows
		-	CPU:
			-	Core:	1
			-	vCPU:	1
		-	RAM: 4 GB		
	-	Application:
		-	OS: Linux
		-	CPU:
			-	Core:	1
			-	vCPU:	1
		-	RAM: 4 GB	
	-	Web:
		-	OS: Linux
		-	CPU:
			-	Core:	1
			-	vCPU:	1
		-	RAM: 4 GB
3. Configuration Requirements
	-	NTP: pool.ntp.org
	-	DNS: 8.8.8.8
	-	Naming Standard:
		-	{2-3 letter representation}{Environment}
		
Hi Student,

The minimum requirements for our servers are the same, so it's pretty straightfoward. For our databases, we use Microsoft SQL. The application and web servers are Linux based. They all get 1 CPU and 4 GB of RAM. 
Since your environment can't access ours, you should use public NTP, which is pool.ntp.org, and public DNS of 8.8.8.8. The naming standard you should use is a 2-3 letter representation, followed by the environment. 
So for a Database server in Prod, use db-prod, for the application, use app-prod, and for web, use web-prod.

Respectfully,

Systems Admin
:::