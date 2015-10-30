## Overview

<<<<<<< HEAD
This vagrant script automatically spins up 2 vms named **k2k-sp** and **k2k-idp** on an OpenStack cloud and set up devstack kilo 

This recipe installs devstack kilo (master branch) with minimal configuration

## How to use?

### 1. Set up vagrant 

1) Install vagrant

Go to [vagrant official site](http://www.vagrantup.com/downloads)

2) Install vagrant-hostmanager plugin to better manage /etc/hosts

`vagrant plugin install vagrant-hostmanager`

3) Install vagrant-openstack-provider

`vagrant plugin install vagrant-openstack-provider`

### 2. Configure the parameters in vagrantconfig

Please change the following parameters in `Vagrantfile` according to your OpenStack environment

**Please see the comments in vagrantconfig.yaml which explains how to set the parameters**

### 3. source your openrc file

You can download your openrc file on horizon under Access and Security -> API access -> Download OpenStack RC File 
=======
This vagrant script spins up 2 vms **k2k-sp** and **k2k-idp** on an OpenStack cloud and set up devstack kilo 
This recipe installs devstack kilo (master branch) with minimal configuration

## How to use

### 1. Configure the parameters in Vagrantfile

Please change the following parameters in `Vagrantfile` according to your OpenStack environment

```
devstack.ssh.private_key_path = 'the path to ssh private key on your host machine'
os.openstack_auth_url = 'the Service Endpoint of Keystone v2 + "tokens"'
# for example: 'https://my.cloud.com:5000/v2.0/tokens' 
os.flavor = 'the ID of the flavor that you're going to use for the 2 vms'
os.image = 'the ID of the image that you will use to spin up your vms with'
os.keypair_name = 'the name of the public key store on your cloud that is corresponding to your private ssh key specified before'
```

** Don't forget that we are spinning up 2 vms and we need to all these parameters twice **

If using an none ubuntu image, change the following line accordingly

```
devstack.ssh.username = 'ubuntu'
```

### 2. source your openrc file

You can download your openrc file on horizon under Access and Security - API access - Download OpenStack RC File 
>>>>>>> merge_moc

once you download your openrc file, simple source it by running: 

`source name_of_your_rcfile` 

on the terminal

<<<<<<< HEAD
### 4. Spin up vms and deploy devstack
=======
### 3. Spin up vms and deploy devstack
>>>>>>> merge_moc
 
simply run `vagrant up` 


