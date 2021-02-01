---
date: "2020-11-05"
title: my approach to a data infrastructure project
---

[ I prepared this answer for a job application process. ]

- Assess what is already in place and ask the stakeholders for their input to assess needs.

- What is working with the current system ? What isn’t working ?
  - some starting points:
    - frequency of updates: seconds, daily, weekly, monthly ?
    - level of automatisation ?
    - data types, formats ? human-readable vs compressed
    - amount of data ? expected throughput ?
    - security access for sensitive data ? threat model ? cloud or private storage ?
    - constraints: time, budget, privacy, specific software, formats ?
    - anticipating future use:
      - shapes the infrastructure decisions right down to small details like including an extra “other” field to multiple-choice data in database schemas
      - What different teams might want to use the data ? what different questions might be asked of the data ? How can we generalise how the data is stored, structured and modeled so that it can be easily retrieved in the future, without compromising on immediate use ?
    - need for alerts or monitoring ? dashboards, data visualisations ?
    - ease of access: APIs ? pipelines to bring the data directly into jupyter notebooks ?

- Having gathered project needs, I would ask what is the next clear step that would improve functionality, and iterate. It’s important to keep changes simple and avoid over-engineering. There’s a tendency to jump into complete costly re-architecture before fully understanding the system. Do we really need big data tools ?

- anticipating future use:
  - when planning data infrastructure, it’s important to balance generalising for future needs, without over-generalising too early (we can’t know the future), and allowing for easy immediate use of the data. Modular, functional thinking allows to design pipelines that have standardised data formats and have easy entry and exit hooks to extend the necessary functionality in the future.

- automatisation:
  - it should be driven by human-readable specifications (the Command design pattern) as much as possible.

- An important aspect of standardised datasets is to version control them to make it easy to see how a conclusion was reached if needed. This also makes collaboration easier.
