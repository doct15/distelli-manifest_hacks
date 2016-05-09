#!/bin/bash

# Decrease the healthcheck interval on the ELB in order to register new instances as fast as possible
aws elb configure-health-check --load-balancer-name {{elbName}} --health-check Target=HTTP:3032/,Interval=5,UnhealthyThreshold=2,HealthyThreshold=2,Timeout=2  --region {{region}}

# Register new instance in the ELB
aws elb register-instances-with-load-balancer --load-balancer-name {{elbName}} --instances `curl -s http://169.254.169.254/latest/meta-data/instance-id` --region {{region}}

# Configure health check intervals to normal values
aws elb configure-health-check --load-balancer-name {{elbName}} --health-check Target=HTTP:3032/,Interval=30,UnhealthyThreshold=2,HealthyThreshold=2,Timeout=2 --region {{region}}

