[]{#anchor}[*Udacity Nanodegree: Hybrid Cloud Engineer*](https://confluence.eng.nutanix.com:8443/display/DVM/Udacity+Nanodegree%3A+Hybrid+Cloud+Engineer)

[*Private Cloud HCI*](https://docs.google.com/document/d/1yAkJBdx9oyoYcfNVPx1sA3h_7fHa1BXRyWB9QzdItks/edit#heading=h.n8a6s96m0oy)

Course scenarios to explore with team:

-   Multitenancy
-   Using idle education on-prem clusters
-   Reducing project infra requirements for cost optimization

[]{#anchor-4}Course 2: On-Premise \"Private Cloud\" Automation

\[ [*Nutanix Course 2 Folder*](https://drive.google.com/drive/folders/1Jqs7WTepEufzm4l4a4XgoqwBIsJIYe1u) \|\| [*Udacity Course 2 Folder*](https://drive.google.com/drive/folders/1C3nNTHU8GKmpV1GvlpQoFze5Y2eS_Rjm) \]

- Objectives: (see [2/lesson_learning_objectives](2/lesson_learning_objectives.md) for more detail)

[]{#anchor-8}Course 3: Public and Hybrid Cloud Management

1.  Learning about Prism Central APIs

    -   Nutanix REST explorer/OpenAPI/Swagger

    -   TBD: Walkthrough, Exercise, Quiz?

    -   Reference: Nutanix.dev (Hello Ken!)

2.  Lesson 4: scale up the monolith?

    -   Lesson learning objectives:

    -   Add MySQL DB tasks to library, add to monolith

    -   Sidebar:

        -   Scale up memory, vCPU with X-Play?
        -   Protecting AHV VM workloads with microsegmentation with Flow policies

    -   Lesson Review: we learned to do TBD

3.  Calm concept: Application Profiles

    -   Lesson learning objective: Configure an application profile to accommodate additional deployment scenarios.

    -   Less is more: the problem with delegating everything

    -   Deployment permutations: T-Shirt sizing

    -   A preview of course 3: a blueprint is inherently hybrid

    -   Your second Calm blueprint application profile!

        -   Walkthrough: Repurpose Calm bootcamp steps to perform "monkey see" walkthrough for following exercise.

        -   Exercise: Your first Calm blueprint: Linux web server as a monolithic VM

            1.  Create blueprint \$STUDENTID-web in your default student project

            2.  Create service1, rename to web 1, clone from environment, adjust properties

            3.  Save and troubleshoot any validation issues

            4.  Add install task

            5.  Save and troubleshoot any validation issues

            6.  Launch and Audit deployment

            7.  Review exercise

        -   Quiz: what steps would be required to make a blueprint hybrid with a new provider?

            1.  Settings \> Provider \> Add New, Save, Verify\
                > Projects \> \$STUDENTID: Add Provider,\
                > Blueprint \> Edit \$blueprint, Select or Create App Profile, Add services from new provider, Save (correct)

            2.  TBD

            3.  Review answer

4.  Public Cloud overview

    -   How to evaluate tradeoffs for SaaS/PaaS versus IaaS

5.  Public cloud concepts (will probably only be one provider, not two):

    -   AWS concepts:

        -   Free tier
        -   EC2 Regions and Availability Zones
        -   AMI
        -   Security Groups
        -   IAM
        -   VPC
        -   Elastic IP

    -   Azure concepts:

    -   GCP concepts:

        -   Projects
        -   App Engine
        -   etc.

6.  Demonstrate second public cloud steps

7.  Global Load Balancing

    -   When to go PaaS: AWS ELB vs. App Balancer lock-in vs. HAProxy, F5, etc.

8.  Labs and Exercises:

    -   Lab: deploy off-prem to a public cloud

        -   Provision AWS free tier
        -   Create an IAM account
        -   Create a VPC and security groups
        -   Set up Calm \> Settings \> Provider for AWS
        -   Create a new project: hybrid
        -   Add AWS+AHV providers to hybrid project
        -   Configure environments for AWS+AHV
        -   Publish LAMP blueprint to hybrid project
        -   Deploy LAMP to AHV
        -   Deploy LAMP to AWS

    -   Lab: clone and modify LAMP

        -   Hybrid deployment to AHV+AWS
        -   Add global load balancing via AWS App balancer or HAProxy
        -   Scale in and out AWS, AHV
        -   Deploy and test a hybrid deployment, scale AWS and AHV independently
        -   Trigger scale in or out via webhook API

    -   Repeat for Azure, GCP, Xi?

9.  ~~Lesson : Windows automation?~~

    -   ~~Analog overview~~

    -   ~~Lesson Review: we learned to do TBD~~

10. Enterprise Cloud Management (e.g. Beam)

    -   Cost management: spending models and remediation

    -   Security and compliance: reporting and remediation

11. Review: hybrid cloud design and management

12. Project: extend Course 3 project to a public cloud for a hybrid web tier with global load balancing.

[]{#anchor-9}Course 4: Hybrid Cloud Application Design and Infrastructure as Code

1.  Introduction: Concepts and Strategies for Hybrid Cloud Design

    -   Infrastructure Providers

    -   [*The Fallacy of Lift and Shift:*](https://docs.google.com/document/d/1OzRYOZqcr_gp3fxseBEwBsCOXe9lWUADAnZ-NRBDPuM/edit?pli=1#heading=h.wnz1xm87cwau) from cloud first to cloud smart

    -   Pets vs Livestock

    -   DevOps

    -   Enterprise Clouds

2.  Automation Maturity

    -   [*Stages 5, 6, and 9 from Pets to Cattle*](https://docs.google.com/document/d/1OzRYOZqcr_gp3fxseBEwBsCOXe9lWUADAnZ-NRBDPuM/edit?pli=1#heading=h.yu6iubxzh9kf)

        i.  [*Synthesis with Scripting:\
            Push Button Environments*](https://docs.google.com/document/d/1OzRYOZqcr_gp3fxseBEwBsCOXe9lWUADAnZ-NRBDPuM/edit?pli=1#heading=h.yu6iubxzh9kf)
        ii. [*Configuration Management:\
            Shell Scripting on Steroids*](https://docs.google.com/document/d/1OzRYOZqcr_gp3fxseBEwBsCOXe9lWUADAnZ-NRBDPuM/edit?pli=1#heading=h.qugvf7s44yrd)
        iii. [*Enterprise, Hybrid, and Multicloud Deployments*](https://docs.google.com/document/d/1OzRYOZqcr_gp3fxseBEwBsCOXe9lWUADAnZ-NRBDPuM/edit?pli=1#heading=h.b2spuugwnuy2)

3.  Advanced Automation Topics (labs out of scope?)

    -   Immutable infrastructure and build artifact overview

    -   Continuous Integration, Delivery, and Deployment overview

    -   Continuous Operations overview

4.  Lesson X: Global Load Balancing between infrastructure providers

    -   When to go PaaS: AWS ELB vs. App Balancer lock-in vs. HAProxy

5.  Lesson X: Hybrid Cloud Management

    -   Fiscal compliance: showback, metadata, reserved instances

    -   Security compliance

6.  Introduction/Setup your Python DSL environment

7.  Labs and exercises:

    -   Lab 1: Monolithic Linux VM

        i.  Exercise 1: create your own VM

    -   Lab 2: Cloud-init and shell script configuration

        i.  Exercise 2: create your own single VM app (a different web server, NGinX?) and do a test deployment

    -   Lab 3: Multi-service VM blueprint with orchestration dependencies

        i.  Exercise 3: create your own multi-service blueprint with different web server from Exercise 2 and do a test deployment

    -   Lab 4: Scale-in/out web tier action

        i.  Exercise 4: reuse your web server from Exercise 2 with a different minimum and maximum population and test

    -   Lab 5: Multi-cloud VM blueprint of web tier

        i.  Exercise 5: reuse your web server from Exercise 2 with a different minimum and maximum population and test

8.  Review: Automation Drives Hybrid Cloud Applications

9.  Project 4: Hybrid Cloud 3-Tier Web Application
