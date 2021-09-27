#!/usr/bin/env bash

branches_prefix="^sprint-"

branches_response=$(curl -H "Authorization: Bearer $CI_JOB_TOKEN" https://gitlab.com/api/v4/projects/"$CI_PROJECT_ID"/repository/branches?search="$branches_prefix")

echo $branches_response | jq 'length'
