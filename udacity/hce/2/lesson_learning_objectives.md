# Course 2 Learning Objectives: Private Cloud Automation

Student will be able to (SWBAT):

- Map business requirements to governance facilities in Prism Central: RBAC, Projects, and Providers
  - Lesson 1: Managing multiple cluster and workload resources
  - Learning Objectives:
    1. Understand the difference between Prism Element and Prism Central and capacity plan enabling Prism Central and Calm automation.
    2. Manage VMs and disk images with categories.
    3. Model business governance requirements using identity management and role based access controls with project resource quotas and provider show back costs.
    4. Configure a project environment for a basic Linux VM with cloud-init and SSH key credentials
- Achieve self-service IaaS with a Calm blueprint published to the marketplace
  - Lesson 2: Calm automation for VM life cycle management
  - Learning Objectives:
    1. Understand Calm automation and orchestration benefits
    2. Publish a marketplace blueprint for customer self-service, on-demand VM IaaS workloads.
    3. Create a single VM blueprint with cloud-init credentials
    4. Complete a deployment, audit, and deprovision for VM IaaS
- Achieve self-service PaaS for a two tier web application based on LAMP stack
  - Lesson 3: Calm automation for web application life cycle management
  - Learning Objectives:
    1. Understand multiple service blueprint life cycle: development, test, clone, publish.
    2. Create a Calm blueprint to automate the configuration, deployment, restarting of a web server on a Linux VM leveraging the Task Library.
    3. Configure workload capacity choice with blueprint application profiles
    4. Configure a simple, one page web PHP application in the document root.
  - Lesson 4: Calm orchestration for database application life cycle management
  - Learning Objectives:
    1. Augment a web server blueprint to add a database server on a Linux VM.
    2. Orchestrate the deployment and configuration of the database server with SQL, tasks, and macros.
    3. Add a custom action to change a database user password, publish and test the blueprint for PaaS self-service.
    4. Update the web application to read and write to the database.
- Achieve self-service SaaS for life cycle action on a three tier web app blueprint
  - Lesson 5: Calm automation for three tier web application life cycle management
  - Learning Objectives:
    1. Clone and augment the two-tier web app blueprint to orchestrate a load balancer on a Linux VM.
    2. Orchestrate the configuration of the load balancer with a web tier array using scale actions.
    3. Publish and test the blueprint for SaaS self-service by scaling out and scaling in the web tier to observe fiscal effects.
