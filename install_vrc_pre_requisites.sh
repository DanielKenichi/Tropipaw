#!/bin/bash

set -a
source .env
set +a

ansible-playbook install_vrc_pre_requisites.yaml -i "./inventories/$TARGET.ini"
