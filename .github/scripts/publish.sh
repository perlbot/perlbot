#!/usr/bin/env bash

if [ ${GITHUB_EVENT_NAME} == "push" && ${GITHUB_REF} == ${SITE_BRANCH} ]; then
  echo Running deploy job . ${GITHUB_EVENT_NAME} . ${GITHUB_REF} . ${GITHUB_BASE_REF} .
  git stash -u
  cd site/
  statocles deploy
else
  echo Not a push to the site branch, not deploying
fi
