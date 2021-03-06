[]{#anchor}[*Udacity Nanodegree: Hybrid Cloud Engineer*](https://confluence.eng.nutanix.com:8443/display/DVM/Udacity+Nanodegree%3A+Hybrid+Cloud+Engineer)

[Nanodegree Course Outline](https://docs.google.com/document/d/1YR6dTsMn6xF0kXmrq-AiP4kSHgLvnvCKEUVozcXLLuE/edit)
---
DevIntuit+BigPic examples:
Rick Gaston10:48 AM
https://classroom.udacity.com/nanodegrees/nd9991/parts/49ac1f4a-6345-4b9f-85dc-6db637ba8c22/modules/b8fdb0eb-12d7-4db5-bda5-d021ea89d7cb/lessons/dcbda48c-aa97-4c42-bc33-ea235089492e/concepts/e5454cf7-5106-465f-be6f-bbf259f93b0f
Michael Conway10:51 AM
https://coco.udacity.com/nanodegrees/nd321-beta/locale/en-us/versions/1.0.0/parts/1018600/modules/1018601/lessons/1019374
ccdev = Curriculum and Certification Development:  Udacity > Course2 > Scripts > CentOS-8-Scripts
https://nutanixinc.sharepoint.com/BU/GEEFR/CCD/Udacity/Forms/AllItems.aspx?viewid=7a4ffbff%2Dfb83%2D41c3%2Db800%2Dc5b1b6de7296&id=%2FBU%2FGEEFR%2FCCD%2FUdacity%2FCourse2%2FScripts%2FCentOS%2D8%2DScripts

https://github.com/nutanix-testdrive/entrypoint-calm/blob/master/entrypoint/specs/calm_environment.json

# Udacity Content
- C2L2 ~atom 62 Calm Projects walkthrough doesn't seem right
- C3: Sept 14 production starts
  - MARK: P2&3 eval tool to @KenT from @ChrisR
- Production Order:
  - Prep for recording:
    - dress t-shirt, water
    - Check light levels
    - 18" ream from front of new desk for headshots
    - Teleprompter?
      - https://cueprompter.com/
      - https://zacue.com/
  - C3 reshoot slides:
    - Done? L1 update Cloudbase-init -> SysPrep
    - L3 comment (dev intuit vs big picture?)
  - C3 exercises
    - RFE:
      - L2?,3: AWS automation, Frame: IAM.csv parse, create providers, add to HCE project+environment; obsolete JRH credential later
      - L4: Frame: hce{4-30}-beam@udacity.com accounts, we'll need to figure out how to distribute students across ~30 Beam logins.
        - Login to Beam with UdacityStudentID%30 for 3 student/account concurrency in passwords.txt?
      - ClusterEndPoint: PC UI timeout
      - ClusterEndPoint: Upload variables and scripts to library
      - ClusterPool: 10 minute unhibernate reservation button?
    - MARK:L1 E2 fixes + BUG:out of memory
     C:\Scripts\API\HTTP_Task_Response_Variables.txt added to https://nutanixinc.sharepoint.com/BU/GEEFR/CCD/Udacity/Forms/AllItems.aspx?viewid=7a4ffbff%2Dfb83%2D41c3%2Db800%2Dc5b1b6de7296&id=%2FBU%2FGEEFR%2FCCD%2FUdacity%2FCourse3%2FScripts%2FAPI
      Variable: CLUSTER_UUID
      Path: $.entities[0].status.cluster_reference.uuid
      Variable: CLUSTER_NAME
      Path: $.entities[0].status.cluster_reference.name
      Variable: DEF_SUB_UUID
      Path: $.entities[0].metadata.uuid
      Variable: DEF_SUB_NAME
      Path: $.entities[0].status.name
    - MARK: L1 E3 Development
    - L3 E2 and 3 swap
    - L4 E* ready to go
      - https://jira.nutanix.com/browse/BEAM-10430 demo creds
      - GTS2020 https://nutanix.handsonworkshops.com/workshops/73114240-32b0-4999-b9c9-42bdc02dc5bb/view/beam_cost_governance/beam_cost_governance/
    - Labs L1-4 https://docs.google.com/document/d/1hcrS5affqzffsDs-PxnK8lpIpxy_Tsg-VeYzMvBp70E/edit?ts=5f5a9c7d
  - C3 headshots
  - C2L0 slides (and review from Udacity) Vid, Quizzes, half done (end of week)
---
- Transcript:

01:27
this course is aimed at anybody who is trying to further their career
in adopting cloud skills and advancing automation skills.
this has become essential for everyone in it and operations
but also in development and test automation is quintessential everywhere
and deploying it on public and private
clouds is also essential
this is the future indisputably
everybody in the planet
is trying to get this even the people
who are trying to do it just for one
side or the other side
in order to be able to automate and run
business the most efficient manner
possible you need automation and you
need to be able to drive it
to any hybrid cloud

02:14
one thing is that we can do one click easy automation
imagine having an apple app store or google play store for enterprise
applications
such as sap hana or large e-commerce websites or hr systems all of these can
become one click that's what we can do with one click automation

02:42
well the field of hybrid cloud
engineering is still
very new and that's what is most
rewarding and exciting about it
it's that we're trying to conquer
problems that have
only started to exist in the last 10
years or less
and it is new for just about everybody
on the planet with very rare exceptions
and even the people who are leading
hybrid cloud engineering on the planet
need more hybrid cloud engineers
and they're trying to bring it to more
parts of their business so
really it is a nascent field for these
skill sets right now globally

03:21
so there's really two sides of the
equation but
keep looking there's multiple doorways
to enter into any business
or organization that requires these
skills the first door or first side of the
equation is software development and test
they need to automate and deploy their software and maintain their software
everywhere aws cto werner vogel
is most famous for saying you build it you run it
and this is true for all developers so now
you can't just write things and make them run on your laptop
we need automation engineers in development to help testing
and help building and help deployment work properly
correspondingly the other half of this equation is it and operations
teams they need to keep these systems up
and running they need to automate
how to build everything how to test
everything how to deploy everything
because they are the underpinnings of
infrastructure and operations of build, of test
and ultimately of production for customers
how do you deploy so the reality
is that these skill sets are essential
and will get you in on almost any door that you knock down

---
- C2 Labs:
  - L1:
    - 50:simulation:LDAP
    - 60:drop RBAC exercise
    - 84:drop PC project exercise
    - 96:redo/defer:Image management/upload: what instructions? it has a demo video
  - L2:
    - video: add vmware provider, calm project
    - 25:Calm enablement simulation
    - 37:done: SSH keypair
    - Ed team exercise docL2: E3,4,5,6=create calm project,
  - L3:
    - 32:drop? Marketplace recap exercise
    - 70:Create a single VM blueprint
- C2: all lesson walkthroughs 10-15,
  - Course Lessons headline intro/outro
  - C2 Proj change for DB+learning object review
  - Word to Ghostwriter to Markdown # tables blocked?
  - C2L2: re-record S23, macro pill
  - C2L3: Creating and Publishing a Single VM Blueprint
    - Slides:
      - 27, 55: breakup/reorg
      - big pic/DYI redo with slide images from C2L1: 14, 29, 34, ; C2L2, 13,19, 38 ; C2L5:12,18
      - lots of demos
---
- Big Picture = visuals for conceptual understanding (flow chart, Venn diagram, etc.), edge cases/special context, glossary
  - Provide a heading for motivation: phrase
  - Explain and use visuals to convey the motivation about the fundamental topics. Motivate them on what they will be able to do!
  - Add a screenshot of the visual from the Big Picture video
  - Detail the main points
  - Big Picture: intro, text summary, image, vocab, links/references
- Developing Your Intuition
  - Provide a heading for building intuition for the fundamental topics
  - Explain and use visuals to build an intuition about the topics you are about to cover. As an expert, you can right away tell what is needed to solve a problem. This is your intuition. Think about how an expert will know this was the right way or approach to solve the problem.
  - What would happen if we didn't have it?
  - Detail the main points about developing the students' intuition about X.
  - Check if students' demonstrate good intuition for the fundamental topics by applying it to new scenarios. Use quizzes to bring to the forefront possible misconceptions students may have, use response options to mirror misconceptions and provide specific feedback to clarify misconceptions
- C2 reviews: L3 (Chris), L4 & L5 (Michael.Haigh)
- C2L0
- C2L2:
    - Blueprint into/concept (importance/components)
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
- C2L4:*Big Picture+Developing Your Intuition* skip: because L4 is a continuation of L3, which was split into more digestable chunks
- P2 solution refinements
  - [Deliverables](https://docs.google.com/document/d/1p3lg1ohIPsjmHMV2cDB_zMxa8JsYBV4W6v-kHI4X74s/edit?ts=5f16103f): gap analysis on manual grading rubric with the [blueprint eval script](https://confluence.eng.nutanix.com:8443/pages/viewpage.action?pageId=96339829) || Code: [udacity/hce/eval/](https://github.com/mlavi/calmbootcamp/tree/master/udacity/hce/eval)
  - Solution Example blueprint:
    - [upload a new version](https://drive.google.com/file/d/1Glca_6_VZnD2tVyuwwWCNIoyFqozS8oI/view?usp=sharing) with these updates:
      - refactor with naming best practices
      - add test acceptance action for webapp behind load balancer with SW Eng/Release manager reqs (add description and source)
      - Optional, nice to have: why does the decompile not work, are these all edge cases to report in #calm-dsl?
- [C3 LO](hce/3/lesson_learning_objectives.md)
  - Consideration of refactoring [course 2, lesson 5](https://github.com/mlavi/calmbootcamp/blob/master/udacity/hce/2/outline.md) into Course 3 to rebalance
  - C3 Outline
    - Mark: Review GSO Calm bootcamp materials https://nutanixinc.sharepoint.com/NutanixServices/Shared%20Documents/Forms/AllItems.aspx?csf=1&web=1&e=QhzmVK&cid=acc31002%2Dff6a%2D47d4%2D876a%2Ddddecfcd4fe5&FolderCTID=0x012000A59174B379A79A41BEE13DF17B200DC4&viewid=dd304715%2Dcab0%2D4510%2D81a9%2Db5f019e0633a&id=%2FNutanixServices%2FShared%20Documents%2FPractice%20Development%2FPublished%20Service%20Kits%2FCloud%2FCalm%2FCalm%20Workshop
    - Sahil/Hitesh hybrid cloud resource management enablement materials

# Udacity Engineering

- Course 1 Project: Wes
  - Title, Change from wonderful co (twc) to the e-commerce company (tecc)
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
---
- Today Update P2 deliverable doc:
  - Download your blueprint from NTNX cluster to Frame desktop
  - Compress to Zip archive with Windows File Explorer
  - Download Zip archive to your laptop
- Setup: Frame, SSH keys, Blueprint upload/download

---
# The Udacity Classroom Workspace with Nutanix

From the Udacity classroom, you will be able to perform exercises and work on course projects with a Nutanix AHV cluster.
You will access the Nutanix cluster via a Virtual Desktop service called Nutanix Frame, which gives you a Windows 10 Desktop automatically configured to do the following:
- Login to Windows, open Chrome web browser, and login to Prism Central web console
- On the Windows desktop:
  - Passwords.txt, which contains Prism Element and Prism Central address, administrator username, and passwords to your Nutanix cluster should your Prism session expire and you need to login via the web browser again. For new browser sessions, you may need to accept the self-signed security certificates when accessing Prism.
  - A shortcut to your student Workspace, where you can save and load your credential and blueprint work.
- C:\Scripts\ which has shell scripts for Calm tasks and cloud-init.txt for VM configuration.

Both the Frame desktop and the Nutanix cluster live for four hours and then they are both destroyed, so you will see instructions to save your work, sometimes multiple times during an exercise.

- You must save your work off the Nutanix cluster to the Udacity student workspace, the easiest way to navigate to it on the Frame desktop is via the Windows File Explorer with any of these equivalent paths:
  - Quick access: **Desktop** then the **Workspace** shortcut
  - This PC: **Desktop** then the **Workspace** shortcut
  - This PC: Local Disk (C:), **cygwin64** folder, then the **workspace** folder
  - C:\cygwin64\workspace\
- Remember that saving any work on your Frame desktop outside of the Udacity student workspace will be lost when the Frame desktop session terminates!
- If you need to pause or reload your web browser, Frame desktop sessions can be resumed most times without loss.
- If Frame desktop is stuck on an expired or problematic Nutanix cluster or if you need more than four hours time to complete your work, you should:
  - Download your work to the Udacity workspace
  - On the lower left of Frame session: click the **Gear** icon to show a pop-up menu and choose: **Close session**
  - This will terminate your Frame desktop and Nutanix cluster access.
  - In the classroom, navigate to another portion of the lesson, then return to the lesson workspace to get a new Frame desktop and Nutanix cluster.

Finally, I'm going to show you how to download a blueprint from your Nutanix cluster to the Frame virtual desktop to your student workspace. For the project submission, you'll need to
- Download your blueprint from NTNX cluster to Frame desktop. Remember to not encrypt the blueprint!
  - By default, this will save to: This PC: **Downloads** folder.
  - Open Windows File Explorer, navigate to Quick access: **Downloads** folder.
  - Right click on your blueprint JSON file, choose **Copy**
  - Navigate to: Quick access: **Desktop** then the **Workspace** shortcut
  - Right click anywhere in the blank area, choose **Paste** your file.
  - Your blueprint file should be visible, right click on it and choose **Send to** and then **Compressed (zipped) folder**
  - A new file ending in .zip will appear with the filename highlighted, accept the default name by clicking outside the file.
  - Right click on the new file ending in .zip, choose **Download with Frame**
- Your blueprint Zip archive will download to your desktop or laptop.
- Browse to the Udacity Hybrid Cloud Engineering Classroom, Course Project submission page and upload your blueprint Zip archive!

This video will walk you through how to use the workspace environment you’ll be using for the majority of the course exercises and projects. We’ll show you how to save blueprint and SSH files to your local desktop, and then how to make use of them in future sessions.
We can resume Frame sessions, but the Nutanix Frame cluster will expire four hours after the start of your sessions.
