<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE concept PUBLIC "-//OASIS//DTD DITA Concept//EN" "concept.dtd">
<concept id="Pulse_Settings_14" xml:lang="en-US">
  <title id="title_dbedbedda68f9a15ACLX81">Pulse Settings</title>
  <conbody>
    <p id="p_dbedbedda68f9a15ACLX82">
      <fig>
        <image height="310" width="250" href="media/image9.jpeg"><alt>media/image9.jpeg</alt>
        </image>
      </fig>
    </p>
    <p id="p_dbedbedda68f9a15ACLX83">Select the gear icon to configure Pulse.</p>
    <ul>
      <li>
        <p id="p_dbedbedda68f9a15ACLX84">Enable/disable</p>
      </li>
      <li>
        <p id="p_dbedbedda68f9a15ACLX85">Set email recipients</p>
      </li>
      <li>
        <p id="p_dbedbedda68f9a15ACLX86">Configure verbosity</p>
        <ul>
          <li>
            <p id="p_dbedbedda68f9a15ACLX87">Basic: Collect basic statistics only.</p>
          </li>
          <li>
            <p id="p_dbedbedda68f9a15ACLX88">Basic Coredump: Collect basic statistics plus core dump data.</p>
          </li>
        </ul>
      </li>
    </ul>
    <p id="p_dbedbedda68f9a15ACLX89">Disabling Pulse is not recommended, since Nutanix Support will not be notified if you have an issue. Some Pulse data can trigger an automated case creation.</p>
    <p id="p_dbedbedda68f9a15ACLX90">Pulse sends alerts to Nutanix Support by default, but administrators can define additional recipients.</p>
    <section>
      <title id="title_dbedbedda68f9a15ACLX91">When configuring Verbosity</title>
      <p id="p_dbedbedda68f9a15ACLX92">Basic statistics include Zeus, Stargate, Cassandra, and Curator subsystem information; Controller VM information; hypervisor and VM information; cluster configuration; and performance information.</p>
      <p id="p_dbedbedda68f9a15ACLX93">The core dump data is a summary of information extracted from the core dump files including the time stamp, the file name, and the fatal message.</p>
    </section>
  </conbody>
</concept>