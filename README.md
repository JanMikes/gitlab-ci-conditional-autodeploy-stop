# Gitlab CI conditional deploy stop

Prototype of Gitlab CI mechanism to switch between auto/manual job if a specific condition is met (existence of multiple `sprint-*` branches).

## How it works

TBD

## Motivation

Having a process in a company to autodeploy from `sprint-*` branches. But it can happen, when sprint is ending and new one is starting, that 2 sprint branches exists at the same time. If this situation happens, autodeploy should be stopped and allow deploy only manually.