# Chef Architechture 

Work Station >> Chef Server>> Nodes

### Work Station Setup (Ubuntu 18.04)
Install Chefdk softwere in your Workstation
1) [Chefdk Downloads Page](https://downloads.chef.io/chefdk)

2) Unpacking
```
dpkg -i chefdk_3.2.30-1_amd64.deb

```
### Node Setup

Create any linex machine thats it

### Chef Server setup

www.manage.chef.io Create an Organization and Download Starter Kit to workstation.
Extrat the strater kit to Prefered location.
move the chef-repo folder
copy your .pem keys in this location (If your nodes having any key authantication)

### Bootstrap command

To add your node  you need to run a command from workstation

```
knife bootstrap 13.233.193.250 --sudo -x ubuntu -i ./mumba.pem -N ip-172-31-15-242.ap-south-1.compute.internal

Knife bootstrap <node ip> --sudo -x <usr name> -i <.pem key file location> -N <node name your wish>

```


### Writing Cookbooks

$:/chef-repo/cookbooks:(switch this location)

```
chef generate cookbook <cookbookname>
```
after that
Generating cookbook hello
- Ensuring correct cookbook content
- Committing cookbook files to git

Your cookbook is ready. Type `cd hello` to enter it.

There are several commands you can run to get started locally developing and testing your cookbook.
Type `delivery local --help` to see a full list of local testing commands.

Why not start by writing an InSpec test? Tests for the default recipe are stored at:

test/integration/default/default_test.rb

If you'd prefer to dive right in, the default recipe can be found at:

recipes/default.rb


copy your recipe into default.rb

then

/chef-repo/cookbooks:knife upload  cookbookname


navigate to manage.chef.io and  drop your cookbook to runlist.