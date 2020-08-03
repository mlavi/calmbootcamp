.. _dayinlife:

-----------------
A Day in the Life
-----------------

In this lab you will follow a day in the life of Carol O'Kay, a 10 year veteran of administrating virtual environments on 3-tier architecture, who has recently deployed her first Nutanix cluster. The Nutanix cluster is being used for a mix of production IT workloads, and supporting the engineering efforts for her company's primary application, an inventory management solution called Fiesta, used to support the company's retail storefronts.

.. note::

   If there are multiple people utilizing the same Nutanix cluster to complete this lab, certain steps may have already been completed. If this occurs, just skip that particular step, and continue on with the lab after you've verified the step(s) was completed correctly.


Developer Workflow
++++++++++++++++++

Meet Dan. Dan is a member of the Fiesta Engineering team. He's behind on testing a new feature, as his request to IT to deploy the virtual infrastructure he requires to perform the testing are several days overdue.

Dan has resorted to deploying VMs outside of the corporate network on his favorite public cloud service, with no security oversight, and putting company IP at risk.

Carol to the rescue - she encourages Dan to follow the exercise below to allow him to easily deploy resources within the Fiesta project through Prism.

#. Log out of the local **admin** account and log back into **Prism Central** with Dan's credentials:

   - **User Name** - devuser01@ntnxlab.local
   - **Password** - nutanix/4u

   .. note::

      If you experience a slow login, try logging in using an Incognito/Private browsing session.

#. Select the :fa:`bars` menu and note that you now have significantly restricted access to the environment.

#. On the **VMs** page, you should already see your *Initials*\ **-WinToolsVM** as available to be managed by Dan.

#. Click on the VM and note Dan can get basic metrics associated with his VM, as well as control the VM configuration, power operations, and even delete the VM.

   .. figure:: images/29.png

   There are two workflows that could be followed for self-service creation of VMs: Traditional VM creation wizard and Calm. One of Dan's requirements is a Linux virtual machine that runs multiple tools required as part of his development workflow.

#. Click **Create VM** and fill out the following fields to provision a traditional virtual machine, similar to the manual VM deployment process Carol followed earlier in the lab:

   - **Create VM from** - Disk Images
   - **Select Disk Images** - Linux_ToolsVM.qcow2
   - **Name** - *Initials* -LinuxToolsVM
   - **Target Project** - *Initials* -FiestaProject
   - **Network** - Secondary
   - **Categories** - Envrionment:Dev
   - Select **Manually configure CPU and Memory for this VM**
   - **CPU** - 2
   - **Cores Per CPU** - 1
   - **Memory** - 4 GiB

#. Click **Save** and note the VM is immediately powered on following creation.

   In addition to the tools VM, Dan also desires to deploy infrastructure that can be used to test new builds of the Fiesta application. Having end users deploy multi-tier applications through single-VM provisioning and manual integration is slow, inconsistent, and doesn't result in high user satisfaction - luckily we can leverage the pre-created Blueprint for Fiesta staged to our project by Carol.

#. Select :fa:`bars` **> Services > Calm**.

#. Select **Blueprints** from the left hand menu and open the **Fiesta-Multi** Blueprint.

   .. figure:: images/30.png

   .. note::

      If you're unfamiliar with Calm Blueprints, take a moment to explore the following key components of the **Fiesta-Multi** Blueprint:

      - Select either the **NodeReact** or **MySQL** service and review the **VM** configuration in the configuration pane on the right hand of the screen.

         .. figure:: images/31.png

      - Select the **Package** tab and click **Configure Install** to view the installation tasks for the selected service. These are the scripts and actions associated with the configuration of each Service or VM.

         .. figure:: images/32.png

      - Under **Application Profile**, select **AHV** and view the variables defined for the Blueprint. Variables allow for runtime customization and can also be used on a per application profile basis to build a single application Blueprint that allows you to provision an application to multiple environments, including AHV, ESXi, AWS, GCP, and Azure.

         .. figure:: images/33.png

      - Select the **Create** Action under **Application Profile** to visualize dependencies between services. Dependencies can be defined explicitly, but depending on assignment of variables Calm will also identify implicit dependencies. In this Blueprint, you see the web tier installation process will not begin until the MySQL database is running.

         .. figure:: images/34.png

      - Click **Credentials** in the toolbar at the top of the Blueprint Editor and expand the existing **CENTOS** credential. Blueprints can contain multiple credentials which can be used to authenticate to VMs to execute scripts, or securely pass credentials directly into scripts.

         .. figure:: images/35.png

      - Click **Back**.

#. Click **Launch** to provision an instance of the Blueprint.

   .. figure:: images/36.png

#. Fill out the following fields and click **Create**:

   - **Name of of the Application** - *Initials* -FiestaMySQL
   - **db_password** - nutanix/4u

   .. figure:: images/37.png

#. Select the **Audit** tab to monitor the deployment of the Fiesta development environment. Complete provisioning of the app should take approximately 5 minutes.

   .. figure:: images/38.png

#. While the application is provisioning, open :fa:`bars` **> Administration > Projects** and select your project.

#. Review the **Summary**, **Usage**, **VMs**, and **Users** tabs to see what type of data is made available to users. These breakouts make it easy to understand on a per project, vm, or user level, what resources are being consumed.

   .. figure:: images/39.png

#. Return to **Calm > Applications >** *Initials*\ **-FiestaMySQL** and wait for the application to move from **Provisioning** to **Running**. Select the **Services** tab and select the **NodeReact** Service to obtain the IP of the web tier.

   .. figure:: images/40.png

#. Open \http://<*NodeReact-VM-IP*> in a new browser tab and validate the app is running.

   .. figure:: images/41.png

   Instead of filing tickets and waiting days, Dan was able to get his test environment up and running before lunch. Instead of drowning his sorrows in Ben & Jerry's tonight, Dan is going to go to the gym, and eat vegetables with his dinner. Go, Dan!

Operator Workflows
++++++++++++++++++

Meet Ronald and Elise. Ronald works as a Level 3 engineering with the corporate IT helpdesk, and Elise works as a QA intern on the Fiesta team. In the brief exercise below you will explore and contrast their levels of access based on the roles defined and categories assigned by Carol.

#. Log out of the **devuser01** account and log back into **Prism Central** with Ronald's credentials:

   - **User Name** - operator01@ntnxlab.local
   - **Password** - nutanix/4u

#. As expected, all VMs with **Environment** category values assigned are available. Note that you have no ability to **Create** or **Delete** VMs, but the abilities to power manage and change VM configurations are present.

   What else can be accessed by this user? Is Calm available?

   .. figure:: images/42.png

#. Log out of the **operator01** account and log back into **Prism Central** with Elise's credentials:

   - **User Name** - operator02@ntnxlab.local
   - **Password** - nutanix/4u

#. Note that only resources tagged with the *Initials*\ **-Team: Fiesta** category are available to be managed.

   .. figure:: images/43.png

#. Elise receives an alert that memory utilization is high on the **nodereact** VM. Update the configuration to increase memory and power cycle the VM.

Using Entity Browser, Search, and Analysis
++++++++++++++++++++++++++++++++++++++++++

Now that Carol has freed up time to focus on replacing additional legacy infrastructure, it is important for her to understand how a large, diverse environment can all be managed and monitored via Prism Central. In the exercise below you will explore common workflows for working with entities across multiple clusters in a Nutanix environment.

#. Log out of the **operator02** account and log back into **Prism Central** with Carol's AD credentials:

   - **User Name** - adminuser01@ntnxlab.local
   - **Password** - nutanix/4u

#. Open :fa:`bars` **> Virtual Infrastructure > VMs**. Prism Central's **Entity Browser** provides a robust UI for sorting, searching, and viewing entities such as VMs, Images, Clusters, Hosts, Alerts, and more!

#. Select **Filters** and explore the available options. Specify the following example filters, and verify the corresponding box is checked:

   - **Name** - Contains *Initials*
   - **Categories** - *Initials*\ -Team: Fiesta
   - **Hypervisor** - AHV
   - **Power State** - On

   Take notice of other helpful filters available such as VM efficiency, memory usage, and storage latency.

#. Select all of the filtered VMs and click the **Label** icon to apply a custom label to your group of filtered VMs (e.g. *Initials* AHV Fiesta VMs).

   .. figure:: images/44.png

#. Clear all filters and select your new label to quickly return to your previously identified VMs. Labels provide an additional means of taxonomy for entities, without tying them to specific policies as is with categories.

   .. figure:: images/45.png

#. Select the **Focus** dropdown to access different out of box views. Which view should be used to understand if your VMs are included as part of a DR plan?

#. Click **Focus > + Add Custom** to create a VM view (e.g. *XYZ-VM-View*) that displays **CPU Usage**, **CPU Ready Time**, **IO Latency**, **Working Set Size Read**, and **Working Set Size Write**. Such a view could be used to helping to spot VM performance problems.

   .. figure:: images/46.png

#. To fully appreciate the power of Prism Central for searching, sorting, and analyzing entities, view the following brief video:

   .. raw:: html

     <center><iframe width="640" height="360" src="https://www.youtube.com/embed/HXWCExTlXm4?rel=0&amp;showinfo=0" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe></center>
