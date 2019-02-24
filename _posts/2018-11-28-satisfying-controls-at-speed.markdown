---
layout: blog
title:  "Satisfying controls at speed"
date:   2018-11-28 09:00:00
author: Peter Maddison
tags: [automation, risk-management, devops]
---
In a world of on-demand compute and rapid delivery of small incremental pieces of value into production, heavily regulated organizations often struggle to align the need for organizational governance with their transformation. One way to approach this is to start with highly opinionated pipelines where the controls are baked in.
<!--more-->

Tackling controls at speed is not easy and requires a strong understanding of the organizational requirements. However, as with most problems, taking an incremental approach to identifying the requirements and aligning them to a known framework can help keep you out of audit jail.

The approach consists of tackling the following areas:

- Establish a common understanding of what good delivery looks like. 
- Select a framework that allows the breakdown and classification of critical controls.
- Align existing controls to the frameworks.
- Map the activities needed to automate those controls. 

A common understanding for delivery could be mapped as:

![DevOps Delivery Model](/images/blog/devops-delivery-model.png "DevOps Delivery Model")

With this common understanding of a target state we can map controls to a target framework. For example, categorize a framework based on:

- Traceability
- Access
- Compilance
- Operations

For each of these areas, document a control, its purpose, how it will be measured and both the positive and negative paths through the control. For example:

- Control: All commits must have a valid story identifier attached
- Purpose: To ensure tracebaility between the nature of the change to the delivered code
- Measured by: A Jira ticket number being included in the commit message
- Positive path: Code proceeds to build
- Negative path: Pipeline fails

Once we've mapped our controls to the framework and defined where the controls will reside, we can map out the necessary activities to satisfy these automated controls. For the above example, this could be achieved by post-hooks in your source code repository. 

Now that we have a common understanding of what controls are necessary, and how we want to measure them, we can build them into a system that builds pipelines satisfying these controls. This results system can then be used by delivery teams to self-provision compliant pipelines. Out-of-band controls are also created to provide identification of anomolous behaviour from pipelines or instances where the controls are not being executed. 

You will sacrifice a portion of your flexibility to ensure organizational and regulatory controls are met. However, there are great benefits from teams using opinionated pipelines rather than trying to determine and satisfy the controls themselves.
