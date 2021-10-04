#!/usr/bin/env bash

branches_prefix="^sprint-"

branches_response=$(curl --header "Authorization:Bearer $PERSONAL_ACCESS_TOKEN" "https://gitlab.com/api/v4/projects/$CI_PROJECT_ID/repository/branches?search=$branches_prefix")

echo $branches_response | jq 'max_by(.name) | .name' | tr -d '"'

# see https://stackoverflow.com/questions/9733338/shell-script-remove-first-and-last-quote-from-a-variable
# stripping " from variable is needed - see https://gitlab.com/janmikes/gitlab-ci-conditional-autodeploy-stop/-/jobs/1646519281
# echo "$opt" | tr -d '"'
