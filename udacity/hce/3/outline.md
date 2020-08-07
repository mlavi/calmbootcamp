# Course 3 Outline: Public and Hybrid Cloud Management

- Justify public cloud use with security, lock-in, and global load balancing considerations
- Learn just enough AWS free-tier to add to Calm settings: provider and a project
- Configure a hybrid web tier blueprint: clone and localize web tier on AWS, rehost database on public cloud
- Understand multiple Hybrid Cloud resource management with Beam

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
  - EXERCISE/LAB: C3L1E2
    - X-Play or Calm runbook for continuous ops?
  - Concept: Multiple application profiles
  5. Configure workload capacity choice with blueprint application profiles
  - Concept: Application Profiles Pill (abbeviated, check if fully moved)[move to course 3]
    - Every blueprint has a default profile, it can be thought of a base layer of the blueprint.
      - The default profile was used in the single-VM blueprint, but it was invisible to the user.
      - If needed, the default profile can be renamed for a better description for operators.
    - Additional application profiles provide the operator role (or higher) deployment choices when using an application deployment.
      - This increases blueprint reuse (of actions and governance) instead of making separate blueprints for each permutation of deployment.
      - Use application profiles to reduce the amount of delegated run-time properties: less choice reduces complexity and increases productivity: less is more!
    - Application Profile best practice: make this as simple and user-friendly as possible, use nouns that reflect the audience use case/jargon. Capitalized noun, ideally without spaces. Make application profiles a set of mutually exclusive choices. Avoid pets when possible! e.g.:
      - Production, Staging, UserAcceptanceTesting, Test, QualityAssurance, Development, ContinousIntegration
      - Public, Private, Hybrid
      - AHV, AWS, Azure, GCP, ESX, K8s
      - DataCenter1, BranchOffice9, Colo3, DisasterRecoveryWest, DisasterRecoveryCentral
      - Small, Medium, Large, Jumbo
      - Titanium, Gold, Silver, Bronze
    - Example use of profile for operator choice:
      - Recommended configurations, such as capacity size: small versus medium versus large resource consumption for different needs.
      - Limited to full configuration delegation with run-time property overrides.
      - Different infrastructure providers for a public, private, and/or hybrid deployment.
      - Any combination of the above.
      - Add reference: [Calm Glossary](../../../appendix/glossary.rst) when needed for students
      - *Calm in Action, Calm Automation playlists?*

    - Walkthrough:
      - Rename default application profile to: Small (remember best practices)
      - Clone Small application profile, rename to Medium
      - Localize medium application profile services, change the VMs to:
        - DB = 2vCPU, 2GB RAM
        - Web = 2vCPU
    - EXERCISE/LAB: C3L1E1
      - Reproduce the above.
  - EXERCISE/LAB: C3L1E3
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
    - EXERCISE/LAB: C3L2E1 Create an AWS account
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
    - EXERCISE/LAB: C3L2E3 Deploy off-prem to a public cloud
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
  - EXERCISE/LAB: C3L3E1 Clone and modify Marketplace LAMP
      - Goal: configure a hybrid web tier blueprint: clone and localize web tier on AWS, rehost database on public cloud
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
  - EXERCISE/LAB: C3L3E2
  - EXERCISE/LAB: C3L3E3
  - Concept: Lesson Review: we learned to do TBD

4. Lesson 4: Hybrid Cloud Management
  - Concept: Lesson learning objectives:
  - Concept: Big Picture
  - Concept: Developing Your Intuition
  - Concept: Enterprise Cloud Management (e.g. Beam)
    - Cost management: spending models and remediation
      - Fiscal compliance: showback, metadata, reserved instances
    - Security and compliance: reporting and remediation
  - EXERCISE/LAB: C3L4E1
  - EXERCISE/LAB: C3L4E2
  - EXERCISE/LAB: C3L4E3
  - Concept: Lesson Review: we learned to do TBD

5. Course Review: hybrid cloud design and management
6. Project 3: extend Course 2 project to a public cloud for a hybrid web tier with deployment choice.
