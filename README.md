# Gitlab CI conditional deploy stop

Prototype of Gitlab CI mechanism to switch between auto/manual job if a specific condition is met (existence of multiple `sprint-*` branches).

## How it works

*Note: In this demo, `$PERSONAL_ACCESS_TOKEN` variable must be set, to read branches from API*

Reads from [branches Gitlab API](https://docs.gitlab.com/ee/api/branches.html#list-repository-branches) by prefix (`sprint-`), then use [jq tool](https://stedolan.github.io/jq/) to count results in array, to determine whether multiple sprint branches exists.

Trick is in having 2 jobs, one triggered automatically and early exit if condition is met and the other one for manual triggering.

## Motivation

Having a process in a company to autodeploy from `sprint-*` branches. But it can happen, when sprint is ending and new one is starting, that 2 sprint branches exists at the same time. If this situation happens, autodeploy should be stopped and allow deploy only manually.