# task_time

[![Coverage Status](https://travis-ci.org/dropofwill/task_time.svg?branch=master)](https://travis-ci.org/dropofwill/rtasklib) [![Coverage Status](https://coveralls.io/repos/dropofwill/task_time/badge.svg)](https://coveralls.io/r/dropofwill/task_time)


## Description

A taskwarrior plugin that adds time tracking and reporting features (still WIP)



## Usage

```
task_time <filter> start
                   stop
                   switch
                   edit
                   modify ...
                   report ...
                   export ...
```


## Dependencies

* Taskwarrior 2.4 > (require custom UDAs and duration data types)

* Ruby >2 (untested on older versions)


## Build Instructions

```
rake build
```


## Install

```
rake install
```


## License

Release under the MIT License (MIT) Copyright (&copy;) 2015 Will Paul


## Data & Configuration

User      ~/.taskrc

Client    Custom UDA, data/config stored in ~/.task/clients.yaml

Project   Default UDA, data/config stored in ~/.task/projects.yaml


#### Tracking UDAs

Estimate    Custom UDA  duration

Progress    Custom UDA  number, 0...1, optional user entered

Accuracy    Custom UDA  number, 0...1

Projection  Custom UDA  number, 0...1

Time        Custom UDA  duration

In-Out pairs


#### User -> Client -> Project default configs

currency: "USD",      string

hourly_rate: 25,      number

rounding?: true,      boolean

rounding_minutes: 15, number


User configs


Project configs


Client configs


#### Reports

Timesheet

Workload

Accuracy

Resolution Time

Punch Card (Github Chart)


#### Research

taskw v. tasklib v. new ruby bindings gem

taskserver: should I save all data in UDA's so taskserver can sync it properly?
