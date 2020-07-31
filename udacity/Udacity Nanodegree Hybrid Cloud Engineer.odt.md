z[]{#anchor}[*Udacity Nanodegree: Hybrid Cloud Engineer*](https://confluence.eng.nutanix.com:8443/display/DVM/Udacity+Nanodegree%3A+Hybrid+Cloud+Engineer)

[Nanodegree Course Outline](https://docs.google.com/document/d/1YR6dTsMn6xF0kXmrq-AiP4kSHgLvnvCKEUVozcXLLuE/edit)
---
#Udacity Content:
- C2 reviews: L3 (Chris), L4 & L5 (Mark, Michael.Haigh?)
  - Big Picture = visuals for conceptual understanding (flow chart, Venn diagram, etc.), edge cases/special context, glossary
    - Provide a heading for motivation: phrase
    - Explain and use visuals to convey the motivation about the fundamental topics. Motivate them on what they will be able to do!
    - Add a screenshot of the visual from the Big Picture video
    - Detail the main points
  - Developing Your Intuition
    - Provide a heading for building intuition for the fundamental topics
    - Explain and use visuals to build an intuition about the topics you are about to cover. As an expert, you can right away tell what is needed to solve a problem. This is your intuition. Think about how an expert will know this was the right way or approach to solve the problem.
    - Detail the main points about developing the students' intuition about X.
    - Check if students' demonstrate good intuition for the fundamental topics by applying it to new scenarios. Use quizzes to bring to the forefront possible misconceptions students may have, use response options to mirror misconceptions and provide specific feedback to clarify misconceptions
- C2L1: Multiple Cluster and Workload Resources
  - Big Picture:
    - In Course 1, you learned how to operate VM workloads on a single Nutanix cluster with the AHV hypervisor. When you have a more than one Nutanix cluster, management can become split and uncoordinated between each cluster. You must reproduce your work in each cluster to have a consistent configuration, governance policy, and resources. The on-premise management problem compounds quickly when you have multiple Nutanix clusters with different hypervisors, as many of our customers do! Furthermore, the public cloud typically represents even further fragmentation as a separate silo for IT governance, operations, and security, so we will address hybrid cloud management in Course 3.
    - In Lesson 1 of Course 2, we'll introduce you to the advanced version of the Prism control plane, which manages multiple clusters and provides additional facilities across those clusters, allowing management at scale. Nutanix Prism Central unites management across all different types of Nutanix clusters and their workloads, from a single pane of glass preventing the need for multiple consoles. Rather than learn about all of the capabilities and features of Prism Central, we will focus on governance with projects and roles, AHV VM image management, and Calm automation.
  - Developing Your Intuition:
    - It is easy and simple to work with one of anything because configuration and operations are instant and atomic. As soon as you have a second cluster, your configuration and operational work can easily double in order to maintain consistency! You crossed over to the new world of scale, where we work to eliminate any single points of failure in our infrastructure, architecture, operations, and culture. Working at scale provides many new challenges for failures and remediation, but this is how organizations mature to tackle bigger initiatives with faster time to market.
    - In order to enable delegation for customer self-service as well as automation, there must be guard rails for safety, security audits, and resource management. All of these topics fit under the umbrella of governance and they must be addressed altogether systematically. When governance and operations are divided across multiple systems, the fragmentation it causes makes it harder to achieve consistency while also driving up complexity. As a hybrid cloud engineer, the trade offs between governance, consistency, and convenience are critical evaluations you must make for short-term and long-term business requirements.
- C2L2:
  - Big Picture
    - With private cloud governance covered in Lesson 1, we can build and automate workloads in projects with role based access controls. The next step is to make self-service workloads available through the Marketplace, which is a customer friendly web interface. We'll begin with creating a project with a default AHV VM environment and then publishing pre-seeded blueprint to that project. In Lesson 2, you'll see how Nutanix Calm automation powers the life cycle of publish, launch, audit, and deleting a workload with Calm blueprints and then perform this in the exercises.
  - Developing Your Intuition
    - In Course 1, we covered the NIST definition of Cloud as having essential characteristics. The success of the public cloud is generally due to rapid provisioning of facilities in an on-demand fashion under a "pay as you go" Operational Expenditure model. In order to replicate the cloud experience on-premise, a private cloud must offer self-service of automated facilities. There is a maturity in progression from IaaS to PaaS to SaaS to provide these experiences in a private cloud and we'll work in Course 3 to do this for a public, then hybrid cloud.
    - Blueprints are the heart of the Calm, they model a business process for infrastructure, operations, and governance together. This unifies the different IT and application silos that normally fragment and slow the business. Blueprints can be exported as a JSON file and shared between people and unfederated Calm instances. It is a typical practice for blueprints to be placed under revision control, there are many Calm blueprints freely available in public Git repositories. In other words, Calm blueprints are software artifacts and they can encompass advanced software engineering practices, but do not be alarmed: we will progressively build up your familiarity with Calm capabilities over the remaining lessons through the easy to use Prism Central web console.
      - Blueprint into/concept (importance/components)
      - What would happen if we didn't have it?
    - We'll take you on the journey from IaaS to PaaS to SaaS.
  - Feedback:
    - I've done small edits directly throughout to make it easier to read.
    - 18: Quiz: Prism Element vs. Prism Central
      - Recommend changing from Era to Acropolis or some other fundamental (already installed) component that isn't control pane related. Students will have no exposure to Era in the course, so it might be considered unfair. Era will eventually be in PC, it is being worked on. We don't mention Karbon or Objects, which also can be enabled in PC today.
    - 29: Added intro paragraph, many clarifications on distributable (vs. distribution), SSH, and cloud-init.
      - Can add a reference to https://distrowatch.com/ if desired.
    - 80-81: would it be possible to modify the labels in text and image to be clearer, e.g.:
      - Backupbasic becomes BackUpBasic
      - Engenvironment becomes EngineeringEnvironment
      - Eng becomes Engineering, Fin = Finance, HR = HumanResources
    - 96-108: we'll eventually drop the "self service" label because this is a remnant of a separate product that is now simply a feature of PC for AHV only, covered by PC Projects. Hence I would ask that rename these sections and headings (maybe not the text) from Prism Self-Service to Prism Central Projects.
      - Same for L1 slides: 28-30
    - I noticed that Prism Central_Uploading an Image from a Workstation.mp4 is over 8 minutes long, probably not an issue, but Udacity likes to keep videos to 3-5 minutes.
- C2L3:Big Picture+Developing Your Intuition
- C2L4:*Big Picture+Developing Your Intuition* skip: because L4 is a continuation of L3, which was split into more digestable chunks
- C2L5:Big Picture+Developing Your Intuition
- C2L0
- P2 solution refinements
  - [Deliverables](https://docs.google.com/document/d/1p3lg1ohIPsjmHMV2cDB_zMxa8JsYBV4W6v-kHI4X74s/edit?ts=5f16103f): gap analysis on manual grading rubric with the [blueprint eval script](https://confluence.eng.nutanix.com:8443/pages/viewpage.action?pageId=96339829) || Code: [udacity/hce/eval/](https://github.com/mlavi/calmbootcamp/tree/master/udacity/hce/eval)
  - Solution Example blueprint:
    - [upload a new version](https://drive.google.com/file/d/1Glca_6_VZnD2tVyuwwWCNIoyFqozS8oI/view?usp=sharing) with these updates:
      - refactor with naming best practices
      - add test acceptance action for webapp behind load balancer with SW Eng/Release manager reqs (add description and source)
      - Optional, nice to have: why does the decompile not work, are these all edge cases to report in #calm-dsl?
- [C3 LO](hce/3/lesson_learning_objectives.md)
  - Consideration of refactoring [course 2, lesson 5](https://github.com/mlavi/calmbootcamp/blob/master/udacity/hce/2/outline.md) into Course 3 to rebalance
  - P3 Proposal+Deliverables
  - C3 Outline
    - Mark: Review GSO Calm bootcamp materials https://nutanixinc.sharepoint.com/NutanixServices/Shared%20Documents/Forms/AllItems.aspx?csf=1&web=1&e=QhzmVK&cid=acc31002%2Dff6a%2D47d4%2D876a%2Ddddecfcd4fe5&FolderCTID=0x012000A59174B379A79A41BEE13DF17B200DC4&viewid=dd304715%2Dcab0%2D4510%2D81a9%2Db5f019e0633a&id=%2FNutanixServices%2FShared%20Documents%2FPractice%20Development%2FPublished%20Service%20Kits%2FCloud%2FCalm%2FCalm%20Workshop
    - Sahil/Hitesh hybrid cloud resource management enablement materials

#Udacity Engineering:

- Course 1 Project: Wes
- Course 2+3 polish:
  - Student state:
    - Blueprints
      - Manual restoral: localized to project/cluster
    - Course 3: AWS provider
      - Manual restoral: Web app automation to populate/verify?
  - Ken/Mike: before and after each lab/exercise:
    - how to manually upload/download your blueprint to Frame desktop and Udacity student workspace
  - Jared:
    - X hour session for cluster, with an option to extend in GUI?
    - Frame or X-hour session timeout:
      - download student state to student workspace and destroy cluster
    - nice to have:
      - delete student state to hibernate?
      - build towards multi-tenant student, project, cluster, LDAP lifecycle
      - student map to cluster/project and state on/un-Loading
      - Discussion with Charan/NTNX Engg, Clean up/purge UserVMs, Ops/DR
        - Work in reverse: Dashboard
          - # of students (all tie cumulative, high-water mark)
          - # of active students (cumulative for this month, high-water mark)
          - # of Calm instances (current vs. all time high water mark for the month)
        - https://portal.nutanix.com/page/documents/details/?targetId=Nutanix-Calm-Admin-Operations-Guide-v3_0%3Anuc-taking-backup-and-restoring-calm-data-t.html
- Course 2 Project:
  - Mark: Web application acceptance test needs to be provided in solution blueprint and externalized.
  - uLab SSH pill/keygen exercise to student workspace? see [coco-ulab.txt](coco-ulab.txt)
  - Project automatic evaluation, cluster config capture, evaluator toolkit with Calm DSL
- Course 2+ architecture: Single-node versus Multi-tenant cluster
  - Modeled in spreadsheet, Course2+Infra tab = https://docs.google.com/spreadsheets/d/1nvnBgewY9eTVJh4EUxDHXI63t1DjxdaBYzQ1P4CvLkY/edit#gid=1955317004
  - Multi-tenant cluster: (running full-time, quarterly)
    - Until concurrency = capacity, is more expensive.
    - For PC or Cluster or User admin operations, required to be simulations.
    - Larger student lifecycle automation required:
      - Per cluster: provision projects, groups, CentOS 7 image.
        - Concurrency limits of networks (50 VLANs) and Calm performance (10 users)
      - Per student: provision LDAP entry, map to a cluster via OU
      - Per session:
        - update OU+project based on cluster pool student capacity map
        - check and delete project apps, blueprints, AWS provider
        - restore AWS provider and blueprints, if possible.
        - or sync state (provider, project, blueprints) across all clusters?
  - Single-node cluster: (ephemeral)
    - Allows admin access for hands-on, possible to skip simulations.
    - No concurrency considerations, outside of GCP project?
    - Need to understand pool and hibernation pool parameters.
    - Smaller automation:
      - Per cluster: CentOS 7 image.
        - Session enforcement of 4 hours?
      - Per session: restore AWS provider and blueprints, if possible.
  - Next challenge: local Frame+cluster in 3 different GCP regions?
---
Hybrid Cloud Engineer Nanodegree

Notes:
- Objectives answer "Student will be able to" and "Student will learn just enough to"
- Artificially constraining objectives to 4 helps focus outcomes and lesson scope
- Course 4 has two re-create objectives, with TBD:
  - source: TBD, from decompiled JSON, boilerplate, or scratch?
  - each could also be slightly extended with new use in the DSL.

- Course 1: Modern Private Cloud
  - Objectives:
    - 40% of ECA, filtered to simulations
  - Project (owned by Wes):
    - Configure HCI VM uptime surviving infrastructure failures?
    - Trojan horse: monolithic LAMP VM for taste of course 2+ scenarios?
- Course 2: Private Cloud Automation
  - Objectives: (see [2/lesson_learning_objectives](hce/2/lesson_learning_objectives.md) for more detail)
  - Project: Three tier web app on LAMP stack variant blueprint with AHV VMs and one SaaS action
- Course 3: Hybrid Cloud Automation
  - Objectives:
    - Justify public cloud use with security, lock-in, and global load balancing considerations
    - Learn just enough AWS free-tier to add to Calm settings: provider and a project
    - Configure a hybrid web tier blueprint: clone and localize web tier on AWS, rehost database on public cloud
    - Understand multiple Hybrid Cloud resource management with Beam
  - Project: LAMP variant blueprint, hybrid web tier on AHV+AWS, DB on AWS as VMs
- Course 4: Hybrid Cloud DevOps
  - Objectives:
    - Justify the evolution to programmatic blueprints, CI/CD, and DevOps values
    - Repurpose any Calm JSON blueprint with Calm DSL SDK decompilation and place under git pre-commit CI/CD
    - Re-create Course 2 private cloud IaaS (source: TBD) under CI/CD
    - Re-create Project 3 hybrid cloud SaaS (source: TBD) under CI/CD
  - Project: Project 3 variant with Calm DSL

---
[]{#anchor-9}Course 4: Hybrid Cloud Application Design and Infrastructure as Code

- Introduction/Setup your Python DSL environment
- Labs and exercises:
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
- Review: Automation Drives Hybrid Cloud Applications
- Project 4: Hybrid Cloud 3-Tier Web Application
