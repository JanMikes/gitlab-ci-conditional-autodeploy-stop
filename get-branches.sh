#!/usr/bin/env bash

curl -H "Authorization: Bearer $CI_JOB_TOKEN" "https://gitlab.com/api/v4/projects/$CI_PROJECT_ID/repository/branches?search=^sprint-

