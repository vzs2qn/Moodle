#!/bin/bash

. ./loadtest.sh

check_ssh_agent_and_added_key || exit 1

# # threads = 2000, gluster
deploy_run_test1_teardown rcsi1 southcentralus https://raw.githubusercontent.com/Azure/Moodle/master/azuredeploy.json azuredeploy.parameters.loadtest.defaults.json apache Standard_D5_v2 mysql 800 500 gluster 2 128 false "$(cat ~/.ssh/authorized_keys)" 2000 6000 18000 delete || exit 1
deploy_run_test1_teardown rcsi2 southcentralus https://raw.githubusercontent.com/Azure/Moodle/master/azuredeploy.json azuredeploy.parameters.loadtest.defaults.json apache Standard_D4_v2 mysql 800 500 gluster 2 128 false "$(cat ~/.ssh/authorized_keys)" 2000 6000 18000 delete || exit 1
deploy_run_test1_teardown rcsi3 southcentralus https://raw.githubusercontent.com/Azure/Moodle/master/azuredeploy.json azuredeploy.parameters.loadtest.defaults.json apache Standard_D3_v2 mysql 800 500 gluster 2 128 true "$(cat ~/.ssh/authorized_keys)" 2000 6000 18000 delete || exit 1
deploy_run_test1_teardown rcsi4 southcentralus https://raw.githubusercontent.com/Azure/Moodle/master/azuredeploy.json azuredeploy.parameters.loadtest.defaults.json apache Standard_D2_v2 mysql 800 500 gluster 2 128 true "$(cat ~/.ssh/authorized_keys)" 2000 6000 18000 delete || exit 1

# # threads = 2000, nfs
deploy_run_test1_teardown rcsi1 southcentralus https://raw.githubusercontent.com/Azure/Moodle/master/azuredeploy.json azuredeploy.parameters.loadtest.defaults.json apache Standard_D5_v2 mysql 800 500 nfs 2 128 false "$(cat ~/.ssh/authorized_keys)" 2000 6000 18000 delete || exit 1
deploy_run_test1_teardown rcsi2 southcentralus https://raw.githubusercontent.com/Azure/Moodle/master/azuredeploy.json azuredeploy.parameters.loadtest.defaults.json apache Standard_D4_v2 mysql 800 500 nfs 2 128 false "$(cat ~/.ssh/authorized_keys)" 2000 6000 18000 delete || exit 1
deploy_run_test1_teardown rcsi3 southcentralus https://raw.githubusercontent.com/Azure/Moodle/master/azuredeploy.json azuredeploy.parameters.loadtest.defaults.json apache Standard_D3_v2 mysql 800 500 nfs 2 128 true "$(cat ~/.ssh/authorized_keys)" 2000 6000 18000 delete || exit 1
deploy_run_test1_teardown rcsi4 southcentralus https://raw.githubusercontent.com/Azure/Moodle/master/azuredeploy.json azuredeploy.parameters.loadtest.defaults.json apache Standard_D2_v2 mysql 800 500 nfs 2 128 true "$(cat ~/.ssh/authorized_keys)" 2000 6000 18000 delete || exit 1
