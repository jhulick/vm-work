## [MAX PaaS](http://max-paas.devl.netspective.com/max-paas-harness/#/) VMs for Development and Server

A better system provisioning workflow with Chef and Vagrant.

Chef and Vagrant represents a huge improvement in time, efficiency and management of developing, running and deploying
projects.

### Tools for the new workflow
You should already have VirtualBox, Chef and Vagrant installed and Configured. You will also need to install a ruby
version manager (RVM/rbenv) and the following gems: veewee, berkshelf and bundler (optional). Hopefully the following
will explain the what and why being using these tools. note that as of writing veewee requires ruby 1.9.2 and berkshelf
requires ruby 1.9.3.

### Chef
Chef is a powerful tool and that power is provided through a few chef-isms. Recipes, attributes, LWRPs, cookbooks, roles,
nodes, data bags.

### Berkshelf
Berkshelf provides the solution to writing a cookbook in isolation, and lets you pull in 3rd party cookbooks from any
location whether that be Opscode, a git repository or even your local filesystem. When you pull in those dependencies,
they stay separate from your cookbook just as with ruby gems, or npm.

### Veewee
To get a custom box ready to be provisioned by Vagrant, there are a few hoops to jump through in terms of setting up software
(chef, ssh, nfs, a vagrant user etc.). This can all be set up manually, but that is not very repeatable and does not
feel very chef-y.

Veewee takes all the pain out of this process, with a couple of commands you tell Veewee what OS you want to install,
and fulfils all the prerequisites necessary for Vagrant (or VMWare, KVM, Parallels for that matter). The instructions
for Veewee are well documented in the repository.



### Developer Ubuntu Installation

  With [Vagrant](http://http://www.vagrantup.com/) and [VirtualBox](https://www.virtualbox.org/) previously installed:

     $ git clone https://github.com/jhulick/vm-work
     $ cd vm-work/vagrant-max-paas-devl-ubuntu-12.04-x86_32
     $ cd bootstrap/max-paas
     $ git clone http://gitlab.rcs.cm.netspective.com/max-paas/max-paas-harness.git
     $ git clone http://gitlab.rcs.cm.netspective.com/max-paas/max-forms.git
     $ git clone http://gitlab.rcs.cm.netspective.com/max-paas/max-grids.git
     $ git clone http://gitlab.rcs.cm.netspective.com/max-paas/max-navigation.git
     $ vagrant up

### Server CentOS Installation

  With [Vagrant](http://http://www.vagrantup.com/) and [VirtualBox](https://www.virtualbox.org/) previously installed:

     $ git clone https://github.com/jhulick/vm-work
     $ cd vm-work/vagrant-max-paas-server-centos65-x86_32
     $ vagrant up


### Features

  - Nginx
  - Java 7
  - Tomcat 7
  - CouchDB
  - Lucene
  - Elasticsearch
  - Ant
  - Maven
  - NVM
  - Node.js 10
  - Git
  - Tmux

### Links

 - [VirtualBox](https://www.virtualbox.org/)
 - [Vagrant](http://http://www.vagrantup.com/)
 - [Chef](http://www.getchef.com/chef/)
 - [Berkshelf](http://berkshelf.com/)
 - [Veewee](https://github.com/jedi4ever/veewee)


