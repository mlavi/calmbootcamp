# Course 3: Hybrid Cloud Automation

- Objectives: 3/lesson_learning_objectives
- Udacity Course 3 Folder:
  - Project Proposal = Hybrid cloud automation: three tier web app
  - Project Deliverables
  - TBD: Course Outline G.sheet and Lesson G.Docs

## Learning Objectives

Student will be able to (SWBAT):

- L1
- L2
- L3
- L4

---
## Project 3 Proposal, Deliverable
TBD

## Course 3 Outline
Will become: https://github.com/mlavi/calmbootcamp/blob/master/udacity/hce/3/outline.md
[]{#anchor-8}Course 3: Public and Hybrid Cloud Management

1.  Lesson 1: Concepts and Strategies for Hybrid Cloud Design
  - Lesson learning objectives:
  - Lesson Review: we learned to do TBD
    - Infrastructure Providers
      - [*The Fallacy of Lift and Shift:*](https://docs.google.com/document/d/1OzRYOZqcr_gp3fxseBEwBsCOXe9lWUADAnZ-NRBDPuM/edit?pli=1#heading=h.wnz1xm87cwau) from cloud first to cloud smart
    - Pets vs Livestock
    - DevOps
    - Enterprise Clouds
    - Automation Maturity
      - [*Stages 5, 6, and 9 from Pets to Cattle*](https://docs.google.com/document/d/1OzRYOZqcr_gp3fxseBEwBsCOXe9lWUADAnZ-NRBDPuM/edit?pli=1#heading=h.yu6iubxzh9kf)
        i.  [*Synthesis with Scripting:\
            Push Button Environments*](https://docs.google.com/document/d/1OzRYOZqcr_gp3fxseBEwBsCOXe9lWUADAnZ-NRBDPuM/edit?pli=1#heading=h.yu6iubxzh9kf)
        ii. [*Configuration Management:\
            Shell Scripting on Steroids*](https://docs.google.com/document/d/1OzRYOZqcr_gp3fxseBEwBsCOXe9lWUADAnZ-NRBDPuM/edit?pli=1#heading=h.qugvf7s44yrd)
        iii. [*Enterprise, Hybrid, and Multicloud Deployments*](https://docs.google.com/document/d/1OzRYOZqcr_gp3fxseBEwBsCOXe9lWUADAnZ-NRBDPuM/edit?pli=1#heading=h.b2spuugwnuy2)
      - Advanced Automation Topics (labs out of scope?)
        -   Immutable infrastructure and build artifact overview
        -   Continuous Integration, Delivery, and Deployment overview
        -   Continuous Operations overview

2.  scale up the monolith?
    - Concept: Calm Application Profiles, partX
      - Lesson learning objective: Configure an application profile to accommodate additional deployment scenarios.
      - Less is more: the problem with delegating everything
      - Deployment permutations: T-Shirt sizing
      - A preview of course 3: a blueprint is inherently hybrid
    - Quiz: what steps would be required to make a blueprint hybrid with a new provider?
      1.  Settings \> Provider \> Add New, Save, Verify\
          > Projects \> \$STUDENTID: Add Provider,\
          > Blueprint \> Edit \$blueprint, Select or Create App Profile, Add services from new provider, Save (correct)
      2.  TBD
      3.  Review answer

3.  Public Cloud overview
    - How to evaluate tradeoffs for SaaS/PaaS versus IaaS
    - AWS concepts and their Course 2 counterparts:
        -   Free tier
        -   EC2 Regions and Availability Zones
        -   AMI
        -   Security Groups
        - SSH keypairs
        -   IAM
        -   VPC
        -   Elastic IP
    - Lab: Create an AWS account
      - Provision AWS free tier
        - Create an IAM account
        - Create a VPC and security groups
        - Identify CentOS AMI in your region
    - SIMULATION/Webapp: Calm > Settings > Providers: Add AWS
        - Set up Calm \> Settings \> Provider for AWS
        - Allow region, Add AMI
        - Save provider and verify
        - Add AWS to existing student project
        - Add environment config for AWS
    - Lab: deploy off-prem to a public cloud
        -   Publish LAMP blueprint to hybrid project
        -   Deploy LAMP to AHV
        -   Deploy LAMP to AWS

4. Lesson: Global Load Balancing between infrastructure providers
    - Concept: When to go PaaS: AWS ELB vs. App Balancer lock-in vs. HAProxy, F5, etc.
    - Lab: clone and modify LAMP
        -   Hybrid deployment to AHV+AWS
        -   Add global load balancing via AWS App balancer or HAProxy
        -   Scale in and out AWS, AHV
        -   Deploy and test a hybrid deployment, scale AWS and AHV independently
        -   Trigger scale in or out via webhook API
    -   Repeat for Azure, GCP, Xi?

5. Lesson X: Hybrid Cloud Management, Enterprise Cloud Management (e.g. Beam)
    -   Cost management: spending models and remediation
    -   Security and compliance: reporting and remediation
    -   Fiscal compliance: showback, metadata, reserved instances
    -   Security compliance
    - Concept: Everything else we didn't cover for Calm features
      - Windows: Analogs to Linux, cloud-init, Shell
      - DSL
      - DevOps
      - CI/CD
      -   Sidebar:
          -   Scale up memory, vCPU with X-Play?
          -   Protecting AHV VM workloads with microsegmentation with Flow policies
          1.  Learning about Prism Central APIs
              - Nutanix REST explorer/OpenAPI/Swagger
              - TBD: Walkthrough, Exercise, Quiz?
              - Reference: Nutanix.dev

6. Review: hybrid cloud design and management
7. Project: extend Course 3 project to a public cloud for a hybrid web tier with global load balancing.
---
[]{#anchor-9}Course 4: Hybrid Cloud Application Design and Infrastructure as Code

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
