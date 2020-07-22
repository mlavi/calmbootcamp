[]{#anchor}[*Udacity Nanodegree: Hybrid Cloud Engineer*](https://confluence.eng.nutanix.com:8443/display/DVM/Udacity+Nanodegree%3A+Hybrid+Cloud+Engineer)

[Nanodegree Course Outline](https://docs.google.com/document/d/1YR6dTsMn6xF0kXmrq-AiP4kSHgLvnvCKEUVozcXLLuE/edit)
---
Tasks:
  - Chris.R: get Smartsheet access, https://app.smartsheet.com/sheets/jpc6R53QvXWV83hw65CWfqWphC2QmV2PQPwXfFx1
  - Sahil hybrid cloud resource management request
  - Course 2 project, outline with learning objectives, content
    - Mark: Web application acceptance test needs to be provided in solution blueprint and externalized.
    - Mark: Review GSO Calm bootcamp materials https://nutanixinc.sharepoint.com/NutanixServices/Shared%20Documents/Forms/AllItems.aspx?csf=1&web=1&e=QhzmVK&cid=acc31002%2Dff6a%2D47d4%2D876a%2Ddddecfcd4fe5&FolderCTID=0x012000A59174B379A79A41BEE13DF17B200DC4&viewid=dd304715%2Dcab0%2D4510%2D81a9%2Db5f019e0633a&id=%2FNutanixServices%2FShared%20Documents%2FPractice%20Development%2FPublished%20Service%20Kits%2FCloud%2FCalm%2FCalm%20Workshop
- Engineering: Wes, Chris, Mark
  - Course 1 Project: Wes
    - Course scenarios to explore: Multi-tenancy, idle education on-prem clusters, reducing project infra requirements for cost optimization
  - Course 2: uLab SSH pill/keygen exercise to student workspace? see [./coco-ulab.txt](coco-ulab.txt)
  - Course 2+ architecture
    - Discussion with Charan/NTNX Engg, Spec with Wes, Clean up/purge UserVMs, Ops/DR
      - Work in reverse: Dashboard
        - # of students (all tie cumulative, high-water mark)
        - # of active students (cumulative for this month, high-water mark)
        - # of Calm instances (current vs. all time high water mark for the month)
      - https://portal.nutanix.com/page/documents/details/?targetId=Nutanix-Calm-Admin-Operations-Guide-v3_0%3Anuc-taking-backup-and-restoring-calm-data-t.html
  - Project automatic evaluation, cluster config capture
  - Course 4 uLab instructions/requirements,
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
Goal: 10-15 min lab/exercise, ideal to have 3 per lesson.
intro, text summary, image, vocab, links/references, quiz, exercise
Insure added to each lesson introduction:
- Overview: heading/video/summary
- Big Picture: heading/video/summary
- Developing your Inspiration: heading/video/summary
- Add Quiz feedback
- L1, L3 big picture: what would happen if we didn't have it?
- L5 refactor/sources:
  - learn web scale, exercise
  - learn database, exercise
  - learn load balancer, exercise
- This week:
  - C2L1-2 draft review, quiz? slides? labs?
  - Build
  - 27th? [C3 LO](3/lesson_learning_objectives.md), P3 Proposal+Deliverables, Outline

#Udacity next steps, ordered with any priority and deadline first:
- Optional, due your EoD: Technical review of Course 2:
  1. [Lesson 1](https://docs.google.com/document/d/1lP5gmNRha9QEa_5z7LC342FHZKF3_8ItndGmWaXUCy8/edit#heading=h.ra72982c88h9)
  2. [Lesson 2](https://docs.google.com/document/d/13hgVPWSRiyC4GsSP7q5DqzLV57Y-fVn1uZa4Gwg9-5A/edit)
  3. [PPTs for L1+L2](https://drive.google.com/drive/u/0/folders/1GKnPGjzz3JZ7VKhRTGsjU37VMbBaum7h)
- Ideally your EoD: [Course 3 Outline/Learning Objectives/Project feedback](https://github.com/mlavi/calmbootcamp/blob/master/udacity/hce/3/lesson_learning_objectives.md)
    - Consideration of refactoring [course 2, lesson 5](https://github.com/mlavi/calmbootcamp/blob/master/udacity/hce/2/outline.md) into Course 3 to rebalance
- Project 2:
  - [Deliverables](https://docs.google.com/document/d/1p3lg1ohIPsjmHMV2cDB_zMxa8JsYBV4W6v-kHI4X74s/edit?ts=5f16103f): gap analysis on manual grading rubric with the [blueprint eval script](https://confluence.eng.nutanix.com:8443/pages/viewpage.action?pageId=96339829) || Code: [udacity/hce/eval/](https://github.com/mlavi/calmbootcamp/tree/master/udacity/hce/eval)
  - Solution Example blueprint:
    - [upload a new version](https://drive.google.com/file/d/1Glca_6_VZnD2tVyuwwWCNIoyFqozS8oI/view?usp=sharing) with these updates:
      - refactor with naming best practices
      - add test acceptance action for webapp behind load balancer with SW Eng/Release manager reqs (add description and source)
      - Optional, nice to have: why does the decompile not work, are these all edge cases to report in #calm-dsl?
