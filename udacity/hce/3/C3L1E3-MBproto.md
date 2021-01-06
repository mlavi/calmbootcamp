In this exercise, you will create X-Play tasks that will dynamically increase memory for taxed workloads. These tasks will trigger off of Prism Central alarms which can help identify infrastructure issues, as well as provide a starting point for operational automation such as this.

1. From the Chrome browser on your Frame desktop, click the **Prism Central** tab to access the Prism Central Management platform.

1. Click the **Entities** menu at the upper left and go to **Services** \&gt; **Calm**.

1. In the left column, click the **Blueprints** icon.  From here, upload your **WebApplication** blueprint from Course 2.  If your **WebApplication** blueprint is in your **Workspace** folder on the Frame desktop, then skip to lab step 8.  If you need to upload your blueprint from your local system, continue with the next lab step.

1. At the lower right side of Frame, click the **cloud** and navigate to your **WebApplication.json** file on your local system.  Select the file and click **Open**.

1. Open File Manager/Explorer on the Frame desktop taskbar and navigate to the **Uploads** folder found in the left column.  Copy your **WebApplication.json** file to your **Workspace** folder on the desktop and continue with the next lab step.

1. From the **Blueprints** page, click **Upload Blueprints** and navigate to the Workspace folder on the desktop and select **WebApplication.json**.  Click **Open**.

1. In the **Upload Blueprints** dialog box, select the **HybridCloudEngineer** project and type **nutanix/4u** in the Passphrase field and click **Upload**.

1. When the upload is complete, you will be in the **WebApplication** blueprint.  If you do not see your services, click the **circled box** at the lower left of the blueprint canvas.

1. Go back to your **Workspace** folder and rename the original **WebApplication.json** file to **WebApplication-original.json**.

1. Click the **Entities** menu at the upper left and go to **Operations** \&gt; **Playbooks**.

1. Select **Create Playbook** on the upper left

1. Select **Webhook** for the **Trigger**.

1. Click **Add Action** on the left under **Actions**.

1. Select **VM Snapshot** on the bottom left.

1. Select **Webhook: entity1** for Target VM, and type **1** in Time To Live.

1. Select **Add Action** , and select **Power Off VM**.

1. Select **Webhook: entity1** for Target VM.

1. Select **Add Action** , and select **VM Add Memory**.

1. Select **Webhook: entity1** for **Target VM**.

1. Type **1** in Memory to Add, and **4** in Maximum Limit.

1. Select **Add Action** and select **Power On VM**.

1. Select **Webhook: entity1** for Target VM.

1. Select **Add Action** , and select **Resolve Alert**.

1. Select **Save &amp; Close** in the upper right corner.

1. Type **your Initials-Webhook RAM** response in the Name text box.

1. Click the slider to **Enable** and click **Save**.

1. Click on your newly created Playbook to reopen the Summary window.

1. Open Notepad text editor on your Frame desktop.

1. Click back on Chrome with your webhook Summary displayed.

  - **Note** : The API Method is **POST** for this webhook.

1. Click **Copy** next to the URL, and paste the URL into Notepad. Press the **Enter** key a few times to put new lines in below the URL.

1. Click Chrome and click **Copy** next to the JSON Body on the right-hand side of the window.

1. Paste the text into the empty space in Notepad. Press the **Enter** key a few times to put new lines in below the JSON Body.

1. Click Chrome and click the **Entities** menu at the upper left and go to **Services** \&gt; **Calm**.

1. Select the **four squares** indicating Applications from the left-hand menu.

1. Click your application name to open it.

1. Click **Services** at the top, and then click **HAProxy** to open its **Properties** menu on the right.

1. Highlight the Name of the VM, right-click and copy it.

1. Paste the VM name into the empty space in Notepad.

1. Press the **Enter** key to put a new line in below the VM Name.

1. Click the **three vertical dots** to drag out the menu, so that you can see VM UUID fully.

1. Highlight the **VM UUID** and right-click and click **copy**.

1. Paste the VM UUID into the empty space in Notepad.

1. In Notepad, replace **\&lt;STRING\_1\&gt;** with your student initials.

1. Highlight and delete all other string and integer key pairs. Ensure there are no blank spaces in between the String1 line and the entity1 line.

1. Delete the comma at the end of the entity1 line.

1. Delete the entire &quot;**entity2**&quot; line, ensuring no blank spaces.

1. On the entity1 line, delete **\&lt;ENTITY\_TYPE\&gt;** and replace it with **vm** , leaving the quotes and backslashes intact.

1. Highlight the **VM Name** you pasted below previously, copy it and replace **\&lt;ENTITY\_NAME\&gt;** with the VM Name you copied, leaving the quotes and backslashes intact.

1. Highlight the **VM UUID** you pasted below previously, copy it and replace **\&lt;ENTITY\_UUID\&gt;** with the VM UUID, leaving the quotes and backslashes intact.
