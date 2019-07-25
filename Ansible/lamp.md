# LAMP instalation on ubuntu 16.04

We can install Apache easily using Ubuntu's package manager, apt. A package manager allows us to install most software pain-free from a repository maintained by Ubuntu. You can learn more about how to use apt here.

For our purposes, we can get started by typing these commands:

```
sudo apt-get update
sudo apt-get install apache2
```
Since we are using a sudo command, these operations get executed with root privileges. It will ask you for your regular user's password to verify your intentions.

Once you've entered your password, apt will tell you which packages it plans to install and how much extra disk space they'll take up. Press Y and hit Enter to continue, and the installation will proceed
