# task_time

[![Travis CI Build Status](https://travis-ci.org/dropofwill/task_time.svg?branch=master)](https://travis-ci.org/dropofwill/task_time) [![Coveralls Coverage Status](https://coveralls.io/repos/dropofwill/task_time/badge.svg)](https://coveralls.io/r/dropofwill/task_time)


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

* Taskwarrior > 2.4 (require custom UDAs, recurrences, and duration data types)

* Ruby > 2 (currently untested on older versions)

* Ruby gem in development [`dropofwill/rtasklib`](http://github.com/dropofwill/rtasklib)

* See `./task_time.gemspec` for the latest Ruby dependencies


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



## Research/Planning

### Research

taskw v. tasklib v. new ruby bindings gem: *Decided to role my own ruby wrapper [`**rtasklib**`](http://github.com/dropofwill/rtasklib).*

taskserver: should I save all data in UDA's so taskserver can sync it properly?


### Data & Configuration Plan

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
