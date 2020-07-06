[*Udacity Course 2 Folder*](https://drive.google.com/drive/folders/1C3nNTHU8GKmpV1GvlpQoFze5Y2eS_Rjm):
- [Project Proposal](https://docs.google.com/document/d/1Y0ulqpMF6Atod_yBlaUwULdtIDDbKQWYHp8Rk1KUx6Y/edit) = Private cloud automation: three tier web app
- [Project Deliverables](https://docs.google.com/document/d/1p3lg1ohIPsjmHMV2cDB_zMxa8JsYBV4W6v-kHI4X74s/edit)

---

# Course 2 Outline: Private Cloud Automation
Objectives: (see [2/lesson_learning_objectives](2/lesson_learning_objectives.md)

0.  Lesson 0: Welcome to Course 2
  - Concept: Meet your instructor
  - Concept: Course 2 overview:
    - Multi-cluster, scale out control plane = a private cloud
    - Automation is the key to self-service
    - From VM IaaS monolith to the PaaS scalable web application to SaaS life cycle operations

1.  Lesson 1: Managing multiple cluster and workload resources
    - Concept: Lesson 1 overview and objectives
      - Map business requirements to governance facilities in Prism Central: RBAC, Projects, and Providers
    - Concept: Prism Central
        - Understand the difference between Prism Element and Prism Central and capacity plan enabling Prism Central and Calm automation.
        - Prism Element control plane for a single Nutanix cluster
        - PC = Scale out control plane for multiple Nutanix clusters, cluster by hypervisor/hardware provider
        - LAB/SIMULATION: PC deployment sizing choices and discussion
        - Concept: warnings and alert logs for cluster resource management
        - Note that we will skip advanced PC workload management facilities: AIOps, sizer runway, etc.
    - Quiz L1Q1: PE vs PC
        - Review answer
    - Concept: Prism Central concepts for governance
        - Concept: Course 1 recap: Governance and business needs: Model business governance requirements using identity management and role based access controls with project resource quotas and provider show back costs.
        - Concept: ECA Pill? PC Identity management
        - Concept: [PC RBAC: Role Based Access Control](pills/ECA-3_0-Course-Guide_ditamap/eca/eca_5-15/for-alpha/eca-5-10-12-prism-central/topics/Prism_Central_Overview_2.html)
        - Concept: ECA Pill? PC Categories:
          - Manage VMs and disk images with categories.
        - Concept: ECA Pill? PC Projects:
            - Users and Roles: granular RBAC levels
            - AHV resource quota: CPU, memory, storage
        - Concept: ECA Pill? AHV VM Image Management, categories, and clusters
        - LAB/SIMULATION: upload and categorize a CentOS 7 cloud image (see Course 2: Project Deliverables)
        - LAB/SIMULATION: create a PC project with an AHV simple quota
    - Quiz L1Q2: Map business requirement scenario to PC concepts
        - Review answer
    - Concept: [Calm enablement choices for capacity planning](https://nutanix.handsonworkshops.com/workshops/4202ba14-b4db-4cc4-ab73-2134e70b518e/view/calm_enable/calm_enable/)
    - LAB/SIMULATION: Calm enablement (abbreviated video?)
    - Lesson 1 Review: we learned to do 1,2,3

2.  Lesson 2: Calm automation for application lifecycle management

    -   Lesson Learning Objectives:

        -   Understand Calm automation and orchestration benefits
        -   Publish blueprints to the marketplace for customer self-service, on-demand application workloads.
        -   Complete a deployment, audit, and deprovision for for VM IaaS
        -   Complete a deployment, audit, and deprovision for application lifecycle management.

    -   Calm Overview: automation for application lifecycle management
        - [Calm basics](https://nutanix.handsonworkshops.com/workshops/4202ba14-b4db-4cc4-ab73-2134e70b518e/view/calm_basics/basics/)
        -   Demo: Calm navigation, self-service applications on-demand under governance
        -   [*https://github.com/mlavi/calmbootcamp/blob/master/what\_is\_calm/what\_is\_calm.rst*](/what_is_calm/what_is_calm.rst)

        -   Quiz: Calm automation does...
            -   infra only
            -   apps only
            -   both (correct)
            -   Review answer

    - Concept: VM IaaS for self-service IT
      - Most important first step for a private cloud
      - Concept: Linux OS, CentOS 7 for a fast, license free base OS
        - Discuss why Linux (vs Windows license)
      - Concept: SSH keypairs for secure access to Linux VMs
        - SSH key password background (vs static password)
        - SSH Pill sources:
        - https://mlavi.github.io/post/ssh-key-authentication/
        - https://portal.nutanix.com/page/documents/details/?targetId=Nutanix-Calm-Admin-Operations-Guide-v3_0%3Anuc-ssh-keys-for-linux-and-windows.html
        - SSH Lab: U-lab Ubuntu 16.04+?:
          - Save udacity passphraseless keypair to student workspace?
      - Concept: Cloud-init for basic, dynamic, secure configuration
    - Concept: Calm governance:
        - Concept: Calm \> Settings \> Providers
            - Show Back Costs
        - Concept: Calm \> Projects
            - Extended from PC projects
            - Included Roles: RBAC levels of project admin, developer, consumer, operator
            - Quiz: match the role to privilege
                a.  Review answer

            -   Walkthrough and Exercise: create your first project

                a.  Create project \$STUDENTID-project
                b.  Add yourself as a project administrator
                c.  Add AHV cluster, do not use quotas.
                d.  Save and confirm your project
                e.  Review exercise: you created a project for governance

            -   Calm concept: Projects, part 2

                a.  Provider Quotas
                b.  Environments
                - LAB/SIMULATION: Configure a project environment for a basic Linux VM with cloud-init and SSH key credentials

        -   Calm concept: Nutanix Marketplace

            -   Blueprint Publishing workflow
            -   Self service: Nutanix Marketplace
            -   Demo video: Project summary of my cluster
            - LAB/SIMULATION: publish a blueprint to a student project

        -   First steps with Calm in Prism Central

            -   Walkthrough: Repurpose Calm bootcamp steps to perform "student see" for following exercise.

                a.  TBD: Things to look out for to troubleshoot problems on each step?
                b.  Show troubleshooting web terminal?

            -   Exercise: deploy a workload on-prem for self service apps

                a.  Amend your first project with an environment and save
                b.  Publish LAMP blueprint under your project
                c.  Choose LAMP blueprint in marketplace, configure launch
                d.  Audit application deployment: LAMP
                e.  Review project use
                f.  Delete application
                g.  Review exercise: you managed your first application from creation to deletion with self-service

    -   Review lesson learnings:

        -   Calm overview, governance, self-service life cycle management of an existing blueprint with auditing

3.  Lesson 3: Modeling application lifecycle with Calm blueprints
- Achieve self-service IaaS with a Calm blueprint published to the marketplace
  - Lesson 2: Calm automation for VM life cycle management
  - Learning Objectives:
    1. Understand Calm automation and orchestration benefits
    2. Publish a marketplace blueprint for customer self-service, on-demand VM IaaS workloads.
    3. Create a single VM blueprint with cloud-init credentials
    4. Complete a deployment, audit, and deprovision for VM IaaS

    -   Learning objectives:

        -   Create a Calm blueprint to automate the configuration and deployment of a web server.
        -   Publish and test the blueprint for self-service.
        -   Understand blueprint lifecycle: development, publish, clone.

    -   Calm concept map: from DSL and Calm in Action, Calm Automation playlists?

        -   Goals: make work reusable and modular (task library, settings, app profiles)

    -   Calm concept: Blueprint authoring and editing

        -   The blueprint is an application lifecycle model
        -   Saving causes the model to be validated
        -   Demo: create a blueprint, save and show troubleshooting tips
        -   TBD: Things to look out for to troubleshoot problems?

    -   Calm concept: Services and Substrates

        -   Calm concept: Run-time properties
        -   Calm concept: Macros (Variables)
        -   TBD: Walkthrough, Quiz

    -   Calm concept: Actions and Tasks

        -   Calm concept: Task Library

        -   TBD: Walkthrough, Exercise: to add Web server install, web server start, web server stop, web server restart

        -   Discuss: why do we skip web server uninstall?

        -   Quiz: why task library?

            -   Cut down on typing and human error

            -   Foster reuse

            -   Scope?

            -   TBD: Review answer

    -   Quiz: Calm blueprints

        -   Substrate vs. service model bottoms up/top down?
        -   Visio
        -   TBD
        -   Review answer

    -   Your first Calm blueprint:

        -   Learn and walkthrough, repurposed from [*https://github.com/mlavi/calmbootcamp/blob/master/calm\_linux\_track/calm\_linux\_app/calm\_linux\_app.rst*](https://github.com/mlavi/calmbootcamp/blob/master/calm_linux_track/calm_linux_app/calm_linux_app.rst):

            -   [*Creating a Blueprint*](https://github.com/mlavi/calmbootcamp/blob/master/calm_linux_track/calm_linux_app/calm_linux_app.rst#creating-a-blueprint)

            -   [*Creating Credentials*](https://github.com/mlavi/calmbootcamp/blob/master/calm_linux_track/calm_linux_app/calm_linux_app.rst#creating-credentials)

            -   [*Defining Variables*](https://github.com/mlavi/calmbootcamp/blob/master/calm_linux_track/calm_linux_app/calm_linux_app.rst#defining-variables) (skip on web server)

            -   [*Adding a Downloadable Image*](https://github.com/mlavi/calmbootcamp/blob/master/calm_linux_track/calm_linux_app/calm_linux_app.rst#adding-a-downloadable-image)

            -   [*Creating the Database Service*](https://github.com/mlavi/calmbootcamp/blob/master/calm_linux_track/calm_linux_app/calm_linux_app.rst#creating-the-database-service) skeleton with [*Creating the web server service*](https://github.com/mlavi/calmbootcamp/blob/master/calm_linux_track/calm_linux_app/calm_linux_app.rst#creating-the-web-server-service) detail

        -   Exercise: Linux web server as a monolithic VM

            -   to accomplish the following:

                a.  Create blueprint \$STUDENTID-web in your default student project
                b.  Create service1, rename to web 1, clone from environment, adjust properties
                c.  Save and troubleshoot any validation issues
                d.  Add install task
                e.  Save and troubleshoot any validation issues
                f.  Launch and Audit deployment

        -   Review exercise: you did your first push button automated web server lifecycle with a few clicks.

        -   Quiz: a new employee asks for a web server. What is the best answer to give them a repeatable, delegatable web server?

            -   Insure external people or groups are in a new project, then Blueprint Publish, Approve, Add project(s) and Publish to Marketplace

            -   Publish a web server blueprint to the default project in the marketplace.

            -   Add people or groups to my project

            -   Add people to in directory server groups

            -   All of the above steps are required

            -   Any of the above steps will suffice (correct)

            -   Review answer

    -   Blueprint lifecycle discussion

        -   Clone blueprints inside Calm

            -   What is dropped inside the same project? Credentials + secrets.

            -   What is dropped outside the project? Potentially cluster, network, image.

            -   What is dropped on export?

        -   Blueprints are JSON

        -   Download and Import blueprints (TBD: verify terms?)

    -   Lesson Review: we learned to do TBD

4.  Lesson 4: multi-tier web application (LAMP)

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

    -   Lesson learning objectives:

        -   Add a database and load balancer to the blueprint to manage a three tier web application lifecycle and variable population
        -   Configure delegatable scale-in and scale-out actions on a web application tier with orchestrated changes to the load balancer.

    -   Calm concept: Orchestration Dependencies

    -   Add the database service:

        -   Walkthrough: Refactor the monolith, reuse the tasks!

        -   Exercise:

            -   Complete the [*Creating the Database Service*](https://github.com/mlavi/calmbootcamp/blob/master/calm_linux_track/calm_linux_app/calm_linux_app.rst#creating-the-database-service) skeleton

            -   Delete the mysql tasks

            -   Add MySQL service and tasks to actions

            -   Wire logical dependency

            -   Save and launch to test

            -   Review

        -   Quiz: why is scalability important?

            -   Single point of failure

            -   How much time saved?

            -   TBD

            -   Review answer

    -   Add the load balancer service:

        -   Walkthrough

        -   Exercise: [*Creating the load balancer service*](https://github.com/mlavi/calmbootcamp/blob/master/calm_linux_track/calm_linux_app/calm_linux_app.rst#creating-the-load-balancer-service)

        -   Add tasks to the library?

            -   TBD: can they be pre-made, are they global or scoped to project?

        -   Review

    -   Concept: Orchestration dependencies across services

        -   Walkthrough
        -   Exercise: [*Adding dependencies*](https://github.com/mlavi/calmbootcamp/blob/master/calm_linux_track/calm_linux_app/calm_linux_app.rst#adding-dependencies)

1. Lesson 5: Calm automation for three tier web application life cycle management
  - Concept: Lesson 5 Overview
    - Achieve self-service SaaS for life cycle action on a three tier web app blueprint
  - Concept: Lesson 5 Learning Objectives:
    1. Clone and augment the two-tier web app blueprint to orchestrate a load balancer on a Linux VM.
    2. Orchestrate the configuration of the load balancer with a web tier array using scale actions.
    3. Publish and test the blueprint for SaaS self-service by scaling out and scaling in the web tier to observe fiscal effects.
  - Calm concept: scale-in and scale-out web tier
        -   Walkthrough
        -   Exercise: [*Scaling Out*](https://github.com/mlavi/calmbootcamp/blob/master/calm_linux_track/calm_day2_linux/calm_day2_linux.rst#scaling-out)
            -   Add web tier actions: scale in and scale out
            -   Add load balancer task, orchestrate dependencies
            -   Test deployment by launching blueprint
            -   Post deployment action: scale out
            -   Audit: Observe web tier population +1
            -   Reload the load balancer to observe new node in rotation
            -   Post deployment action: scale in
            -   Audit: Observe web tier population +1
            -   Reload the load balancer to observe new node no longer in rotation
            -   Delete application
        -   Add web scale tasks to the Task Library from blueprint by cut and paste?
    - Lesson 5 Review: we learned to test the deployment, scale the web tier in and out

2.  Lesson 6: Prism Central and Calm APIs for continuous ops? (dropped)

3.  Course 2 Review: Private Cloud Automation for self-service enterprise apps
