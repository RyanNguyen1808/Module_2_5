#!/bin/bash
yum update -y
yum install -y ec2-instance-connect
systemctl restart sshd