# Course 3 Outline: Public and Hybrid Cloud Management

1. Lesson 1: Strategies for Hybrid Cloud Design
  - Concept: Lesson learning objectives:
    - L1 Identify strategies for hybrid cloud design across infrastructure, architecture, and operations
      1. Discern between workload migration and synthesis strategies
      2. Reconcile requirements against scalability challenges: global load balancing considerations
      3. Reconcile requirements against agility challenges: security, lock-in considerations
      4. Identify opportunities for continous operations
  - Concept: Big Picture
    - The goal for a hybrid cloud engineer is to design and execute the organization's business to run in a uniform and scalable manner for consistent operations and governance. In course 1, you learned how to operate a modern private cloud and in course 2, you learned how to automate private cloud workloads from an IaaS to PaaS to SaaS cloud experience. We'll use everything covered, map the parallels to the public cloud, and then augment our existing automation to use the public cloud in a hybrid manner.
    - In course 1, we covered the NIST definition of cloud and the common mistake to conflate the term exclusively with public cloud. Furthermore, we showed how (public) cloud first has not always been the best choice and the strategy has evolved to cloud smart. Hence the industry has emphasized hybrid cloud solutions in order to achieve cloud smart.
    - Correspondingly, we will tackle the difference between creating and moving workloads; moving or translating a workload between two infrastructure providers does not achieve the goal of cloud smart.
  - Concept: Developing Your Intuition
    - The definition of hybrid from Wiktionary: "Something of mixed origin or composition; often, a tool or technology that combines the benefits of formerly separate tools or technologies." We will explore hybrid in a few manners during course 3:
      - Combining public and private clouds into a hybrid cloud application deployment for scalable performance
      - Combining different deployment scenarios under the same governance and operational model for consistency
    - Accomplishing these simple goals can be hard when tools and providers are typically domain specific, resulting in separate silos of abilities and fragmentation. The hybrid cloud engineer must always arbitrate this natural conflict when a new capability that satisfies a new business requirement (for a single platform, cloud, tool, etc.) against the complexity encompassed to reproduce it in a hybrid model. In other words, many bottoms-up and domain specific automation approaches, methods, and tools challenge the ability to inter-operate consistently with multiple providers. Fortunately, Nutanix Calm blueprints incorporate internal and external technologies and providers which can be blended together easily to create, consume, and manage the workload life cycle: this is an inherently hybrid approach!
    - Reference: https://en.wiktionary.org/wiki/hybrid
  - Concept: Infrastructure Provider Strategies
    - Infrastructure providers are similar in that they offer compute, memory, and storage often consumed as VMs. They also offer many advanced PaaS and SaaS-like facilities and applications, although these can be proprietary in their feature set and operation. The potential proprietary nature of any PaaS and SaaS feature, operation, and API can form a dependency which causes fragmentation and provider lock-in. On the other hand, making advanced features and applications work in a provider-independent fashion also has costs to develop and operate.
    - The first problem encountered when we speak to customers who ask how to make one public cloud SaaS offering work the same way on another public cloud or private cloud, is not realizing they have taken on a proprietary arrangement. A hybrid cloud engineer must be aware of these business lock-ins and negotiate requirements and tradeoffs when adopting or avoiding them. Simply put, a hybrid cloud engineer should advise when the evaluation to leave a provider must be added as a business requirement.
    - Therefore, treating compute, memory, and storage for VMs should be considered a safe target for hybrid cloud applications to preserve infrastructure provider independence for a cloud smart strategy.
    - The second problem customers ask to solve are for tools or services to move VM workloads between public and private clouds.
      - [*The Fallacy of Lift and Shift:*](https://docs.google.com/document/d/1OzRYOZqcr_gp3fxseBEwBsCOXe9lWUADAnZ-NRBDPuM/edit?pli=1#heading=h.wnz1xm87cwau) from cloud first to cloud smart
      - **RESEARCH/TODO: is there any ECA content for Move? Find the Move HoW, but not a potential lab exercise.**
    - Providers and technologies evolve their capabilities and business models to compete for your business: a hybrid cloud engineer surveys the market to see what their current and competing solutions offer to better improve business operations and requirements. Re-evaluating your current workloads for hybrid cloud deployment can be a difficult task.  The best first step is often to reproduce what you currently have with automation to make it IaaS and evolve to PaaS if required. At that point, when you can synthesize a new workload from a blueprint with a few clicks, it becomes easier to reproduce.
  - Concept: Pets vs Livestock for scalability
      - Enterprise Clouds
      - NTNX Clusters on AWS?
  - Concept: DevOps for agility and Automation Maturity
    - We've used the Shell task for executing work on a VM with shell scripting, but this can lead to more advanced tooling examples for automation:
        i.  [*Synthesis with Scripting:\
            Push Button Environments*](https://docs.google.com/document/d/1OzRYOZqcr_gp3fxseBEwBsCOXe9lWUADAnZ-NRBDPuM/edit?pli=1#heading=h.yu6iubxzh9kf)
        ii. [*Configuration Management:\
            Shell Scripting on Steroids*](https://docs.google.com/document/d/1OzRYOZqcr_gp3fxseBEwBsCOXe9lWUADAnZ-NRBDPuM/edit?pli=1#heading=h.qugvf7s44yrd)
            - Hybrid tooling: Refactoring configuration management with Calm
            - Downfalls of multiple CMDBs/sources of truth and orchestrators
        iii. [*Enterprise, Hybrid, and Multicloud Deployments*](https://docs.google.com/document/d/1OzRYOZqcr_gp3fxseBEwBsCOXe9lWUADAnZ-NRBDPuM/edit?pli=1#heading=h.b2spuugwnuy2)
    - Concept: Advanced Automation Topics (labs out of scope)
      - Immutable infrastructure and build artifact overview
      - Continuous Integration, Delivery, and Deployment overview
      - Continuous Operations overview
    - Concept: Expanded Calm features
      - Windows: Analogs to Linux, cloud-init, Shell
      - Protecting AHV VM workloads with microsegmentation and Flow policies
      - Nutanix Calm DSL
      - Runbooks
      - Learning about Prism Central APIs
        - Nutanix REST API Explorer/OpenAPI/Swagger
        - TBD: Walkthrough, Exercise, Quiz?
        - Reference: [Nutanix.dev](https://www.nutanix.dev)
  - Concept: scalability and global load balancing considerations
  - Concept: Global Load Balancing between infrastructure providers
      - When to go PaaS: AWS ELB vs. App Balancer lock-in vs. HAProxy, F5, etc.
  - EXERCISE/LAB: C3L1E1
    - Two web tiers on private cloud, mixed into load balancer
  - EXERCISE/LAB: C3L1E2
    - Different task types e.g. HTTP tasks?  Could be used to demonstrate Calm's integration potential with any other product exposing an API
  - EXERCISE/LAB: C3L1E3 Continuous ops
    - X-Play or Calm runbook for continuous ops: Scale up memory, vCPU with X-Play?
  - Concept: Lesson Review: we learned to do TBD

2. Lesson 2: Public cloud infrastructure provider
  - Concept: Lesson learning objectives:
  - L2 Provision, configure, and use a public cloud infrastructure provider in a project
    - Learn just enough AWS free-tier to add to Calm settings: provider and a project
    1. Provision a public cloud provider account
    2. Configure the public cloud provider for secure workload automation **(Question: How do we define "secure"?)**
    3. Add the public cloud provider and configure in a project
    4. Deploy a marketplace blueprint and audit a workload on a public cloud (achieving public cloud PaaS)
  - Concept: Big Picture
    A cloud experience should be generally be similar across different providers, but each will have particular differences in terminology and implementation. In course 1 we outlined the progression from IaaS to PaaS to SaaS offerings. When dealing with a public cloud provider, you'll be able to choose from a variety of data centers in different regions of the world, anchoring you to the local capabilities of the region. Generally, while most public cloud facilities are available in all regions, they may have different costs and potential limitations.

    In course 3, we'll focus on just adding one public cloud provider: the leader of the industry, Amazon Web Services (AWS). We'll add AWS as a new Calm provider and then enable it in your project. Then we'll augment our three tier web app blueprint to become a hybrid cloud web tier across both public and private cloud IaaS.

  - Concept: Developing Your Intuition
    We'll explore governance in AWS public cloud with IAM, then VM, OS Image, and SSH keypair properties of EC2, just as we did with Nutanix AOS and AHV. Here's a map:
    | Term | Nutanix | AWS |
    | ---- | ------- | --- |
    | Governance | Prism Central RBAC | IAM |
    | VM | VM | EC2: Elastic Compute |
    | OS | AHV Image | AMI: Amazon Machine Image |
    | SSH | private key | SSH keypair |
  - Concept: Public Cloud overview
    - AWS concepts and their Course 2 counterparts:
        - Free tier: t2.micro and t3.micro: 12 months free, Compute
          - See fine print details! Not govcloud or China
          - https://aws.amazon.com/free/?nc2=h_ql_pr_ft&all-free-tier.sort-by=item.additionalFields.SortRank&all-free-tier.sort-order=asc&awsf.Free%20Tier%20Categories=categories%23compute&awsf.Free%20Tier%20Types=tier%2312monthsfree
        - https://aws.amazon.com/ec2/pricing/on-demand Linux:
          - us-east-1 (Virgina): t3.micro 	2 	Variable 	1 GiB 	EBS Only 	$0.0104 per Hour
          - us-east-2 (Ohio): t3.micro 	2 	Variable 	1 GiB 	EBS Only 	$0.0104 per Hour
          - us-west-2 (Oregon): t3.micro 	2 	Variable 	1 GiB 	EBS Only 	$0.0104 per Hour
          - us-west-1 (N.California): t3.micro 	2 	Variable 	1 GiB 	EBS Only 	$0.0124 per Hour
          - us-west-3 (Los Angeles): t3.micro 	2 	Variable 	1 GiB 	EBS Only 	$0.0125 per Hour
          - ca-central-1 (Ca): t3.micro 	2 	Variable 	1 GiB 	EBS Only 	$0.0116 per Hour
          - ami-02b0c55eeae6d5096
          Amazon Linux AMI 2018.03.0 (HVM), SSD Volume Type - ami-02b0c55eeae6d5096
The Amazon Linux AMI is an EBS-backed, AWS-supported image. The default image includes AWS command line tools, Python, Ruby, Perl, and Java. The repositories include Docker, PHP, MySQL, PostgreSQL, and other packages.
Red Hat Enterprise Linux 8 (HVM), SSD Volume Type - ami-0a54aef4ef3b5f881 (64-bit x86) / ami-0ffd59b53e6797671 (64-bit Arm)
Red Hat Enterprise Linux version 8 (HVM), EBS General Purpose (SSD) Volume Type
RHEL 8.2
/var/log/cloud-init*
Hint: online YAML validator for user data
        - EC2 Regions and Availability Zones
        - IAM
        - AMI
        - Security Groups
        - SSH keypairs
        - Hold on: VPC and Elastic IP (and DNS?), IAM Role
    - EXERCISE/LAB: C3L2E1 Create an AWS account
      - Provision AWS free tier
        - Create an AWS account
        - Pick a well known region, we suggest us-west-2 for minimal expense.
        - Create an IAM user, assign minimal privileges
        - Create a VPC and security groups
        - Upload your SSH keypair
        - Identify CentOS AMI in your region
    - EXERCISE/LAB: C3L2E2 Add AWS provider to Calm and Project Environment
        - Set up Calm \> Settings \> Provider for AWS
        - Allow region, Add CentOS AMI
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
    - L3 Implement hybrid cloud scalability and deployment choice for a web application
    - Configure a hybrid web tier blueprint: clone and localize web tier on AWS, rehost database on public cloud
    1. Augment the web tier application to add a public cloud in a blueprint
    2. Operate the load balancer across public and private cloud web tiers in a blueprint
    3. Configure a application profiles for additional deployment scenarios
  - Concept: Big Picture
    - The goal for effective scalability and deployment choices is to ensure tasks that are otherwise reactive are managed in efficient time-sensitive manner.  In course 2, you learned about some of the strategies that can be applied to Hybrid Cloud Management and had time to think about how those strategies apply to effective decision making.
    - By thinking about how applications and deployment strategies can apply in different and yet similar manners irrespective of the cloud environment running an application, it became apparent how planning these strategies can impact application lifecycles at later stages.
    - In essence, these strategic planning ititiatives can help drive the adoption of application-specific technologies such as Cloud-Init for configuration automation and shell tasks for task automation, while also opening the door to considering domain-specific automation approaches such as the Nutanix Calm DSL and runbooks.
    - In previous lessons, the idea of domain-specific tools being not-so-desirable was discussed, although there is certainly a place for certain technologies that follow this pattern, if they can aid in improving application agility and lifecycle management.  As an example, the Nutanix Calm DSL, when applied to Nutanix Calm specifically, won't apply to improving lifecycle efficiency in other products, but can allow some tasks that were otherwise repetitive and complex to be distilled down to a much similar approach.  From another angle, the use of the Nutanix Calm DSL to automate runbook execution is an excellent way of streamlining the scalability and deployment decisions that are critical to this lesson.
  - Concept: Developing Your Intuition
    - In this lesson, we'll explore a number of ways that scalability and deployment decisions can be planned strategically and efficiently without sacrificing the domain knowledge that most automation engineers have spent so long to develop.
    - As an example, what happens when the web component of an web application requires additional resources?  This lesson will demonstrate how this can be achieved quickly and efficiently, thereby avoiding the need for manual resource deployment.
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
      - Concept: Multiple application profiles
      5. Configure workload capacity choice with blueprint application profiles
      - Concept: Application Profiles Pill (abbreviated, check if fully moved)[move to course 3]
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
  - EXERCISE/LAB: C3L3E2
  - EXERCISE/LAB: C3L3E3
  - Concept: Lesson Review: we learned to do TBD

4. Lesson 4: Hybrid Cloud Management
  - Concept: Lesson learning objectives:
    - L4 Identify strategies for hybrid cloud management for fiscal and security compliance
    - Understand multiple Hybrid Cloud resource management with Beam
    1. Design a fiscal governance policy for public and private clouds
    2. Design a security governance policy for public and private clouds
  - Concept: Big Picture
  - Concept: Developing Your Intuition
  - Concept: Enterprise Cloud Management (e.g. Beam)
    - Cost management: spending models and remediation
      - Fiscal compliance: showback, metadata, reserved instances
    - Security and compliance: reporting and remediation
    - SE enablement https://drive.google.com/drive/folders/1f1ZWGJL-TzW6QtM3895AE96wNyaUO_g5
      - Ask HenryL/WillP
  - EXERCISE/LAB: C3L4E1
    - Connect Beam with your IAM key
    - Turn on security report?
    - Wait 24 hours for first report
  - EXERCISE/LAB: C3L4E2
  - EXERCISE/LAB: C3L4E3
  - Concept: Lesson Review: we learned to do TBD

5. Course Review: hybrid cloud design and management
  - A word of caution: non-expiring accounts pose security and billing risk.
    - You have a potential security and billing time bomb in 12 months:
    - Delete your IAM key after submitting project 3.
    - Optionally cancel your personal AWS account
    - You have a potential  billing time bomb in 2 weeks:
    - Cancel your personal Beam account, but your IAM key deletion already helped.
6. Project 3: extend Course 2 project to a public cloud for a hybrid web tier with deployment choice.
