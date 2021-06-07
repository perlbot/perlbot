#!/usr/bin/env bash

if [[ ${GITHUB_EVENT_NAME} == "pull_request" && ${GITHUB_BASE_REF} == ${SITE_BRANCH} ]]; then
  echo Running deploy job ! ${GITHUB_EVENT_NAME} ! ${GITHUB_REF} ! ${GITHUB_BASE_REF} !
  echo Detected pull request for pages, doing test build
  cd site/
  statocles build
else
  echo Not a pull request for website not testing builds
fi
