#!/bin/bash

set -a
source .env
set +a

ansible-playbook install_gnome.yaml -i "./inventories/$TARGET.ini"
