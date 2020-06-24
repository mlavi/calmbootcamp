# Course 2 Outline: Private Cloud Automation

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

---
[]{#anchor-4}Course 2: On-Premise \"Private Cloud\" Automation

\[ [*Nutanix Course 2 Folder*](https://drive.google.com/drive/folders/1Jqs7WTepEufzm4l4a4XgoqwBIsJIYe1u) \|\| [*Udacity Course 2 Folder*](https://drive.google.com/drive/folders/1C3nNTHU8GKmpV1GvlpQoFze5Y2eS_Rjm) \]

[]{#anchor-5}Course 2 Learning Objectives
Student will be able to (SWBAT):

1. Model business governance requirements with projects for role based access controls resource quotas, and show back costs to delegate resource management for applications.
3. Create, execute, and publish an application blueprint to enable delegated self-service, on-demand, automated private cloud workloads and life cycle operations.

[]{#anchor-6}Course 2 Project Proposal Document

[*Private cloud automation: three tier web app*](https://docs.google.com/document/d/1Y0ulqpMF6Atod_yBlaUwULdtIDDbKQWYHp8Rk1KUx6Y/edit)

1. What are the exercises that lead to the Course 2 Project?
2. Solution set and grading rubric

---
[]{#anchor-7}Course 2 Outline

1.  Lesson 1: Managing multiple cluster and workload resources

    -   Welcome to Course 2

        -   ATOM: HEADER Meet your instructor : add link

        -   Course 2 overview

            -   Multi-cluster, scale out control plane = a private cloud

            -   Automation is the key to self-service

            -   From the monolith to the scalable web application

    -   Concept: Prism Central

        -   Prism Element control plane for a single Nutanix cluster
        -   PC = Scale out control plane for multiple Nutanix clusters, cluster by hypervisor/hardware provider
        -   Demo VIDEO: PC deployment sizing choices and discussion
        -   Concept: warnings and alert logs for cluster resource management
        -   Note that we will skip advanced PC workload management facilities: AIOps, sizer runway, etc.

    -   Quiz L1Q1: PE vs PC

        -   Review answer

    -   Concept: Prism Central concepts for governance

        -   Course 1 recap: Governance and business needs

        -   Identity management

        -   PC concept: RBAC: Role Based Access Control

        -   PC concept: Categories

        -   PC concept: Projects

            -   Users and Roles: granular RBAC levels

        -   PC concept: image management, categories, and clusters

    -   Quiz L1Q2: Map business requirement scenario to PC concepts

        -   Review answer

    -   Lesson Review: we learned to do TBD

2.  Lesson 2: Calm automation for application lifecycle management

    -   Lesson Learning Objectives:

        -   Understand Calm automation and orchestration benefits
        -   Publish blueprints to the marketplace for customer self-service, on-demand application workloads.
        -   Complete a deployment, audit, and deprovision for for VM IaaS
        -   Complete a deployment, audit, and deprovision for application lifecycle management.

    -   Calm Overview: automation for application lifecycle management

        -   Concept: Calm enablement choices for capacity planning

        -   Demo: Calm enablement (abbreviated video)

            -   [*https://github.com/mlavi/calmbootcamp/blob/master/what\_is\_calm/what\_is\_calm.rst*](https://github.com/mlavi/calmbootcamp/blob/master/what_is_calm/what_is_calm.rst)

        -   Demo: Calm navigation, self-service applications on-demand under governance

        -   Quiz: Calm automation does...

            -   infra only

            -   apps only

            -   both (correct)

            -   Review answer

    -   Calm governance:

        -   Calm concept: Calm \> Settings \> Providers

            -   Show Back Costs

        -   Calm concept: Projects

            -   Extended from PC projects

            -   Included Roles: RBAC levels of project admin, developer, consumer, operator

            -   Quiz: match the role to privilege

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

        -   Calm concept: Nutanix Marketplace

            -   Blueprint Publishing workflow

            -   Self service: Nutanix Marketplace

            -   Demo video: Project summary of my cluster

        -   First steps with Calm in Prism Central

            -   Walkthrough: Repurpose Calm bootcamp steps to perform "student see" for following exercise.

                a.  TBD: Things to look out for to troubleshoot problems on each step?
                b.  Show troubleshooting web terminal?
                c.  Discuss why Linux (vs Windows license), SSH key password background (vs static password)

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
            - SSH Pill > sources:
              - https://mlavi.github.io/post/ssh-key-authentication/
              - https://portal.nutanix.com/page/documents/details/?targetId=Nutanix-Calm-Admin-Operations-Guide-v3_0%3Anuc-ssh-keys-for-linux-and-windows.html

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

Lesson 5:

1.  -   Calm concept: scale-in and scale-out web tier

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

    -   Lesson Review: we learned to test the deployment, scale the web tier in and out

2.  Lesson 5: Prism Central and Calm APIs for continuous ops?

3.  Course 2 Review: Private Cloud Automation for self-service enterprise apps
