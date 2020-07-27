# []{#anchor-8}Course 3: Hybrid Cloud Automation

- Objectives: 3/lesson_learning_objectives
- Udacity Course 3 Folder:
  - Project Proposal = Hybrid cloud automation: three tier web app
  - Project Deliverables
  - TBD: Course Outline G.sheet and Lesson G.Docs

## Course and Lesson Learning Objectives

Student will be able to (SWBAT):

- L1 Identify strategies for hybrid cloud design across infrastructure, architecture, and operations
  - Lesson learning objectives:
    1. Discern between workload migration and synthesis strategies
    2. Reconcile requirements against scalability challenges
    3. Reconcile requirements against agility challenges
    4. Identify opportunities for continous operations
- L2 Provision, configure, and use a public cloud infrastructure provider in a project
  - Lesson learning objectives:
    1. Provision a public cloud provider account
    2. Configure the public cloud provider for secure workload automation
    3. Add the public cloud provider and configure in a project
    4. Deploy a marketplace blueprint and audit a workload on a public cloud (achieving public cloud PaaS)
- L3 Implement hybrid cloud scalability and deployment choice to a web application
  - Lesson learning objectives:
    1. Augment the web tier application to add a public cloud in a blueprint
    2. Operate the load balancer across public and private cloud web tiers in a blueprint
    3. Configure a application profiles for additional deployment scenarios
- L4 Identify strategies for hybrid cloud management for fiscal and security compliance
  - Lesson learning objectives:
    1. Design a fiscal governance policy for public and private clouds
    2. Design a security governance policy for public and private clouds
---

## Course 3 Outline
Will become: https://github.com/mlavi/calmbootcamp/blob/master/udacity/hce/3/outline.md
Course 3: Public and Hybrid Cloud Management

1. Lesson 1: Strategies for Hybrid Cloud Design
  - Concept: Lesson learning objectives:
  - Concept: Big Picture
  - Concept: Developing Your Intuition
  - Concept: Infrastructure Provider Strategies
      - [*The Fallacy of Lift and Shift:*](https://docs.google.com/document/d/1OzRYOZqcr_gp3fxseBEwBsCOXe9lWUADAnZ-NRBDPuM/edit?pli=1#heading=h.wnz1xm87cwau) from cloud first to cloud smart
    - Pets vs Livestock for scalability
      - Enterprise Clouds
    - DevOps for agility
    - DevOps and Automation Maturity
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
      - Concept: Everything else we didn't cover for Calm features
        - Windows: Analogs to Linux, cloud-init, Shell
        - DSL
        - CI/CD
        -   Sidebar:
            -   Scale up memory, vCPU with X-Play?
            -   Protecting AHV VM workloads with microsegmentation with Flow policies
            1.  Learning about Prism Central APIs
                - Nutanix REST explorer/OpenAPI/Swagger
                - TBD: Walkthrough, Exercise, Quiz?
                - Reference: Nutanix.dev
  - Exercise/Lab: C3L1E1
    - X-Play or Calm runbook for continuous ops?
  - Exercise/Lab: C3L1E2
  - Exercise/Lab: C3L1E3
  - Concept: Lesson Review: we learned to do TBD

2. Lesson 2: Public cloud infrastructure provider
  - Concept: Lesson learning objectives:
  - Concept: Big Picture
  - Concept: Developing Your Intuition
  - Concept: Public Cloud overview
    - How to evaluate tradeoffs for SaaS/PaaS versus IaaS
    - AWS concepts and their Course 2 counterparts:
        - Free tier
        - EC2 Regions and Availability Zones
        - AMI
        - Security Groups
        - SSH keypairs
        - IAM
        - VPC
        - Elastic IP
    - Exercise/Lab: C3L2E1 Create an AWS account
      - Provision AWS free tier
        - Create an IAM account
        - Create a VPC and security groups
        - Identify CentOS AMI in your region
    - SIMULATION/Webapp: C3L2E2 Calm > Settings > Providers: Add AWS
        - Set up Calm \> Settings \> Provider for AWS
        - Allow region, Add AMI
        - Save provider and verify
        - Add AWS to existing student project
        - Add environment config for AWS
    - Exercise/Lab: C3L2E3 Deploy off-prem to a public cloud
      -   Publish LAMP blueprint to hybrid project
      -   Deploy LAMP to AHV
      -   Deploy LAMP to AWS
  - Quiz: what steps would be required to make a blueprint hybrid with a new provider?
    1.  Settings \> Provider \> Add New, Save, Verify
        \> Projects \> \$STUDENTID: Add Provider,
        \> Blueprint \> Edit \$blueprint, Select or Create App Profile, Add services from new provider, Save (correct)
    2.  TBD
    3.  Review answer
  - Concept: Lesson Review: we learned to do TBD

3. Lesson 3: Implement hybrid cloud scalability and deployment choice
  - Concept: Lesson learning objectives:
  - Concept: Big Picture
  - Concept: Developing Your Intuition
  - Concept: Global Load Balancing between infrastructure providers
      - When to go PaaS: AWS ELB vs. App Balancer lock-in vs. HAProxy, F5, etc.
  - Exercise/Lab: C3L3E1 Clone and modify Marketplace LAMP
      -   Hybrid deployment to AHV+AWS
      -   Add global load balancing via AWS App balancer or HAProxy
      -   Scale in and out AWS, AHV
      -   Deploy and test a hybrid deployment, scale AWS and AHV independently
      -   Trigger scale in or out via webhook API
      -   Repeat for Azure, GCP, Xi?
    - Concept: Calm Application Profiles, partX
      - Lesson learning objective: Configure an application profile to accommodate additional deployment scenarios.
      - Less is more: the problem with delegating everything
      - Deployment permutations: T-Shirt sizing
      - A blueprint is inherently hybrid
  - Exercise/Lab: C3L3E2
  - Exercise/Lab: C3L3E3
  - Concept: Lesson Review: we learned to do TBD

4. Lesson 4: Hybrid Cloud Management
  - Concept: Lesson learning objectives:
  - Concept: Big Picture
  - Concept: Developing Your Intuition
  - Concept: Enterprise Cloud Management (e.g. Beam)
    - Cost management: spending models and remediation
      - Fiscal compliance: showback, metadata, reserved instances
    - Security and compliance: reporting and remediation
  - Exercise/Lab: C3L4E1
  - Exercise/Lab: C3L4E2
  - Exercise/Lab: C3L4E3
  - Concept: Lesson Review: we learned to do TBD

5. Course Review: hybrid cloud design and management
6. Project 3: extend Course 2 project to a public cloud for a hybrid web tier with deployment choice.
