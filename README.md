>Note: This is a repository that should be used as a guide to setup a Ubuntu host for Tropipaw's VRC streaming account

# Getting started
First, install on your localhost ansible with the ```install_ansible.sh``` script.

Then, setup a ```.env``` file using the template available

Lastly, install NoMachine in your localhost and on the remote server to access it remotely with a GUI using ```install_no_machine.sh```

# Install VRC
Run ```install_pre_requisites.sh``` script to install steam and flatpak using the ```install_pre_requisites.yaml``` playbook.

Then open Steam and log in into your steam account and install VRC.

> Note: Currently this repository does not automated the VRC installation on steam itself, 
as the installation via steamcmd is not recognized by the steam client.

After installing VRC, we need to setup proton since VRC is a game for windows. 

To do this, run ```flatpak run net.davidotek.pupgui2``` and select a GE-Proton version for VRC. 

Look at this [guide](https://lvra.gitlab.io/docs/vrchat/) for more information
