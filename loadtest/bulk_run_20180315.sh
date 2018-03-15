#!/bin/bash

. ./loadtest.sh

check_ssh_agent_and_added_key || exit 1

# # threads = 400
deploy_run_test1_teardown ltest7 southcentralus https://raw.githubusercontent.com/Azure/Moodle/master/azuredeploy.json azuredeploy.parameters.loadtest.defaults.json apache Standard_DS1_v2 mysql 100 125 nfs 2 128 false "$(cat ~/.ssh/authorized_keys)" 400 1200 10800 delete || exit 1
deploy_run_test1_teardown ltest8 southcentralus https://raw.githubusercontent.com/Azure/Moodle/master/azuredeploy.json azuredeploy.parameters.loadtest.defaults.json apache Standard_DS2_v2 mysql 100 125 nfs 2 128 false "$(cat ~/.ssh/authorized_keys)" 400 1200 10800 delete || exit 1
deploy_run_test1_teardown ltest9 southcentralus https://raw.githubusercontent.com/Azure/Moodle/master/azuredeploy.json azuredeploy.parameters.loadtest.defaults.json apache Standard_DS1_v2 mysql 100 125 nfs 2 128 true "$(cat ~/.ssh/authorized_keys)" 400 1200 10800 delete || exit 1
deploy_run_test1_teardown ltest10 southcentralus https://raw.githubusercontent.com/Azure/Moodle/master/azuredeploy.json azuredeploy.parameters.loadtest.defaults.json apache Standard_DS2_v2 mysql 100 125 nfs 2 128 true "$(cat ~/.ssh/authorized_keys)" 400 1200 10800 delete || exit 1

# # threads = 800
deploy_run_test1_teardown ltest11 southcentralus https://raw.githubusercontent.com/Azure/Moodle/master/azuredeploy.json azuredeploy.parameters.loadtest.defaults.json apache Standard_DS1_v2 mysql 200 250 nfs 2 128 false "$(cat ~/.ssh/authorized_keys)" 800 2400 14400 delete || exit 1
deploy_run_test1_teardown ltest12 southcentralus https://raw.githubusercontent.com/Azure/Moodle/master/azuredeploy.json azuredeploy.parameters.loadtest.defaults.json apache Standard_DS2_v2 mysql 200 250 nfs 2 128 false "$(cat ~/.ssh/authorized_keys)" 800 2400 14400 delete || exit 1
deploy_run_test1_teardown ltest13 southcentralus https://raw.githubusercontent.com/Azure/Moodle/master/azuredeploy.json azuredeploy.parameters.loadtest.defaults.json apache Standard_DS1_v2 mysql 200 250 nfs 2 128 true "$(cat ~/.ssh/authorized_keys)" 800 2400 14400 delete || exit 1
deploy_run_test1_teardown ltest14 southcentralus https://raw.githubusercontent.com/Azure/Moodle/master/azuredeploy.json azuredeploy.parameters.loadtest.defaults.json apache Standard_DS2_v2 mysql 200 250 nfs 2 128 true "$(cat ~/.ssh/authorized_keys)" 800 2400 14400 delete || exit 1

# # threads = 1200
deploy_run_test1_teardown ltest15 southcentralus https://raw.githubusercontent.com/Azure/Moodle/master/azuredeploy.json azuredeploy.parameters.loadtest.defaults.json apache Standard_DS1_v2 mysql 400 375 nfs 2 128 false "$(cat ~/.ssh/authorized_keys)" 1200 3600 18000 delete || exit 1
deploy_run_test1_teardown ltest16 southcentralus https://raw.githubusercontent.com/Azure/Moodle/master/azuredeploy.json azuredeploy.parameters.loadtest.defaults.json apache Standard_DS2_v2 mysql 400 375 nfs 2 128 false "$(cat ~/.ssh/authorized_keys)" 1200 3600 18000 delete || exit 1
deploy_run_test1_teardown ltest17 southcentralus https://raw.githubusercontent.com/Azure/Moodle/master/azuredeploy.json azuredeploy.parameters.loadtest.defaults.json apache Standard_DS1_v2 mysql 400 375 nfs 2 128 true "$(cat ~/.ssh/authorized_keys)" 1200 3600 18000 delete || exit 1
deploy_run_test1_teardown ltest18 southcentralus https://raw.githubusercontent.com/Azure/Moodle/master/azuredeploy.json azuredeploy.parameters.loadtest.defaults.json apache Standard_DS2_v2 mysql 400 375 nfs 2 128 true "$(cat ~/.ssh/authorized_keys)" 1200 3600 18000 delete || exit 1

# # threads = 1600
deploy_run_test1_teardown ltest19 southcentralus https://raw.githubusercontent.com/Azure/Moodle/master/azuredeploy.json azuredeploy.parameters.loadtest.defaults.json apache Standard_DS1_v2 mysql 800 500 nfs 2 128 false "$(cat ~/.ssh/authorized_keys)" 1600 4800 21600 delete || exit 1
deploy_run_test1_teardown ltest20 southcentralus https://raw.githubusercontent.com/Azure/Moodle/master/azuredeploy.json azuredeploy.parameters.loadtest.defaults.json apache Standard_DS2_v2 mysql 800 500 nfs 2 128 false "$(cat ~/.ssh/authorized_keys)" 1600 4800 21600 delete || exit 1
deploy_run_test1_teardown ltest21 southcentralus https://raw.githubusercontent.com/Azure/Moodle/master/azuredeploy.json azuredeploy.parameters.loadtest.defaults.json apache Standard_DS1_v2 mysql 800 500 nfs 2 128 true "$(cat ~/.ssh/authorized_keys)" 1600 4800 21600 delete || exit 1
deploy_run_test1_teardown ltest22 southcentralus https://raw.githubusercontent.com/Azure/Moodle/master/azuredeploy.json azuredeploy.parameters.loadtest.defaults.json apache Standard_DS2_v2 mysql 800 500 nfs 2 128 true "$(cat ~/.ssh/authorized_keys)" 1600 4800 21600 delete || exit 1
