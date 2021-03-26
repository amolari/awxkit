#!/bin/bash
export instanceId=`curl http://169.254.169.254/latest/meta-data/instance-id`
source /config/cloud/aws/onboard_config_vars
export $(cut -s -d= -f1 /config/cloud/aws/onboard_config_vars)

envsubst < telemetry-test.json > my-telemetry-test.json
