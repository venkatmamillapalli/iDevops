# Ansible Installation Ubuntu 18.04

To begin using Ansible as a means of managing your various servers, you need to install the Ansible software on at least one machine.

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
Your Ansible server now has all of the software required to administer your hosts.
* Create more than one centos7 (/ubuntu) machines (2)..Create a user (ansibleuser) and password for applying
ansible configurations on all the machines
```
a.adduser ansibleuser
b.passwd ansibleuser
```
Switch to ansibleuser on machine 1

```
a.su ansibleuser
```
Create ssh-key using ssh-keygen
```
ssh-keygen

ssh-copy-id nodeip
``
*enter the node in this location

```
sudo vi /etc/ansible/hosts

```
* To check node is properly set 

```
ansible -m ping all
```

