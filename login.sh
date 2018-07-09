#!/bin/bash
DOCKER_LOGIN=`aws ecr get-login --no-include-email --region us-east-2`
${DOCKER_LOGIN}