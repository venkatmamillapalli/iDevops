# Ansible Installation Ubuntu 18.04

To begin using Ansible as a means of managing your various servers, you need to install the Ansible software on at least one machine.
## Ansible control server setup

To get the latest version of Ansible for Ubuntu, you can add the project's PPA (personal package archive) to your system. Before doing this, though, you should first ensure that you have the software-properties-common package installed. This software will make it easier to manage this and other independent software repositories:
```
sudo apt update
sudo apt install software-properties-common
```
Then add the Ansible PPA by typing the following command:
```
sudo apt-add-repository ppa:ansible/ansible

```
Press ENTER to accept the PPA addition.

Next, refresh your system's package index once again so that it is aware of the packages available in the PPA:
```
sudo apt update

```
Following this update, you can install the Ansible software:
```
sudo apt install ansible

```
Installing Python
```
sudo apt install python-pip
python --version
```
*Create a user (ansibleuser) and password for applying
ansible configurations on all the machines
```
a.useradd ansibleuser
b.passwd ansibleuser
```
Adding this user to sudoers group
```
sudo -i  #switching root user
visudo
ansibleuser ALL=(ALL:ALL) NOPASSWD:ALL
```
Switch to ansibleuser on machine 1

```
a.su ansibleuser
```

Your environment is must communicate with password based authontication
your environment is AWS please enable password based authontication.

PasswordbasedAuthonticaion yes
```
sudo vi /etc/ssh/sshd_config
```
After this restart sshd service
```
sudo service sshd restart
```
Create ssh-key using ssh-keygen
```
ssh-keygen

ssh-copy-id nodeip

```
## Node setup
* Just install python in node
* enable password based authuntication
* add user to sudoers group

Enter the node ip in this location in Ansible Server

```
sudo vi /etc/ansible/hosts

```
* To check node is properly set 

```
ansible -m ping all
```

