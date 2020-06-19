::: {.body .conbody}
Hi Student,

The basic testing resource requirements for each virtual machine in the 3-tier application stack will be the same.  Microsoft SQL has been chosen for the database tier and the application server and web server tiers will both be Linux based.  Each virtual machine will be configured with 1 vCPU and 4 GB of RAM.  For testing purposes you will need to configure the Network Time Protocol (NTP) using the public service, pool.ntp.org, and 8.8.8.8 for the Domain Naming Service (DNS).  The virtual machine naming convention will be based on a 2-3 letter representation, followed by the environment.  Example: Database server for Production, use db-prod. Application for development, use app-dev, etc…
The production virtual machines, when created based on the previous criteria, should be duplicated to create an identical development environment.

Respectfully,

Systems Admin
:::