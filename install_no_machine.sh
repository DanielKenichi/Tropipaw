#!/bin/bash

set -a
source .env
set +a

ansible-playbook install_no_machine.yaml -i "./inventories/$TARGET.ini"
