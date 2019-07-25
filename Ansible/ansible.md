# Ansible

Playbooks
    =>plays
        =>tasks
            => module
            

what is module ?
* Atomic activity which does some configaration/installation

ex: file : present/absent
=================================
* Ansible loops
* Handlers
* Ansible Variables
    * group variables
    * Host Variables
/etc/ansible/hosts  => Default Inventory
How do i create my own inentory?
```
ansible-plybook -i invetaryfilename playbook.yml
```
what is service enable in ansible

how does ansible works?
Ansible connects the node through ssh connectinon and by using python script ansible executing the playbooks by converting its python scripts.


1) command
2)play book
3)host
4)playbook
https://gist.github.com/ekreutz/301c3d38a50abbaad38e638d8361a89e
===============================================
name: "{{item}}"   => jinja template
[Official Documentation](https://docs.ansible.com/ansible/latest/user_guide/playbooks_templating.html)


===================================================

Import playbook vs Include playbook ??

## Ansible Galaxy




roles priority

playbook folder
home directory
vi /etc/ansible

