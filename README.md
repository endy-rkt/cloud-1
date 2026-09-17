# cloud-1
Before the following step, make sure that ssh server is running and python3 installed on the target server

1. create .venv then use "make setup" to install ansible
2. add the server in the ansible inventory(ansible/inventory/hosts.ini)
3. create vault password file for ansible vault; in the case of the current Makefile create vault password file in "ansible/.vault.pass"
4. launch config provisionning with "make config"