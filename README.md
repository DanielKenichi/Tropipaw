> This is a repository used to automated (or most of it) a VRC installation on a remote Ubuntu server

# Getting started

First, install ansible with the ```install_ansible.sh``` script.

Then, setup a ```.env``` file using the template available

# Install VRC
Run ```install_vrc.sh``` script to install vrc using the ```install_vrc.yaml``` playbook.

> Note: If you have steamguard enabled, the playbook will fail at the last task trying to download VRC, since VRC requires a login to be installed. If that is the case, install vrc manually on the steam GUI

After installing VRC, we need to setup proton since VRC is a game for windows. 

To do this, run ```flatpak run net.davidotek.pupgui2``` and select a GE-Proton version for VRC. 

Look at this [guide](https://lvra.gitlab.io/docs/vrchat/) for more information
