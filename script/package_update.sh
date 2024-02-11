#!/bin/sh
echo "START Update"

aws ssm send-command --document-name "AWS-RunShellScript" --document-version "1" --targets '[{"Key":"tag:ssm:package-update","Values":["yes"]}]' --parameters '{"workingDirectory":[""],"executionTimeout":["1800"],"commands":["yum -y update"]}' --timeout-seconds 600 --max-concurrency "50" --max-errors "0" --region ap-northeast-2

echo "End Update"
