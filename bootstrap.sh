#! /bin/bash

# ---------------------------------------------------
# UPDATING HOST FILE
# ---------------------------------------------------
echo "EXECUTING STEP 1 --> /etc/hosts FILE UPDATION"
cat >>/etc/hosts<<EOF
172.16.1.100 acs2.example.com acs2
172.16.1.101 node21.example.com nodes21
EOF
echo "DONE..."
# ---------------------------------------------------
# INSTALLING ADDITIONAL UTILITY
# ---------------------------------------------------
echo "EXECUTING STEP 2 --> INSTALLING UTILITY"
yum update -y -q >/dev/null 2>&1 
yum install -y -q git tree vim >/dev/null 2>&1
echo "DONE..."
