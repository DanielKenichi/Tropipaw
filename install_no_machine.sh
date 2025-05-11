#!/bin/bash

set -a
source .env
set +a

ansible-playbook -vvv install_no_machine.yaml -i "./inventories/$TARGET.ini"
