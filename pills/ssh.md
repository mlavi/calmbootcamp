::: {.body .conbody}
1. Intro:
	-	SSH is one of the primary ways to access a Linux machine. 
	-	One of the most common programs used to leverage SSH is PuTTY, which has the capability to generate and utilize SSH keys. This allows for passwordless access to Linux VMs.
	-	To accomodate security best-practices, along with the ease of key authentication, please adhere to the guidelines below.

2. Requirements:
	-	Passphraseless security key
	-	Use a cloud-init enabled Linux VM image (this should be a disk image, not an ISO)

3. Implementation
	a.	Generate a passphraseless SSH key.
	b.	Use cloud-init to inject your public key on VM boot
		-	Make sure the username created in your cloud-init file is the same as the Credentials login account name in Calm.
	c.	Have Calm use your private key as a runtime credential during launch
:::