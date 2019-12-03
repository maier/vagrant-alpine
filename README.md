# Vagrant Alpine Linux Guest
[![Gem Version](https://badge.fury.io/rb/vagrant-alpine.svg)](http://badge.fury.io/rb/vagrant-alpine) [![Build Status](https://travis-ci.org/maier/vagrant-alpine.svg?branch=master)](https://travis-ci.org/maier/vagrant-alpine)

This is a [Vagrant](http://vagrantup.com/) plugin adding support for [Alpine Linux](http://alpinelinux.org) guests.

> **NOTE:** The vagrant-alpine plugin requires Vagrant 1.7+

**This plugin is now [part of Vagrant core](https://github.com/hashicorp/vagrant/pull/10975)
as of Vagrant 2.2.6.  It is recommended that you uninstall the vagrant-alpine
plugin if you are using Vagrant 2.2.6 or above.**

## Features

* Detection
* Set hostname
* Configure networking DHCP or static
* Halt/Shutdown the guest
* RSync detection and installation
* NFS client installation

## Changes

* v0.4.0 - updates for alpine 3.8+
* v0.3.0 - update to fix defunct alpine apk repository in maier/alpine-3.3* boxes so that nfs client will install correctly.
* v0.2.0 - add `apk update` and `apk add --upgrade` to nfs client install

## Installation

```
$ vagrant plugin install vagrant-alpine
```

## Usage

```sh
$ vagrant init maier/alpine-3.3.1-x86_64
$ vagrant up
```

or

```sh
$ vagrant init maier/alpine-3.2.3-x86_64
$ vagrant up
```

or

```sh
$ vagrant init maier/alpine-3.1.3-x86_64
$ vagrant up
```

## Configuration

The vagrant-alpine plugin does not offer any configuration options.


## Development

To work on the `vagrant-alpine` plugin, clone this repository, and use
[Bundler](http://gembundler.com) to get the dependencies:

```
$ gem install bundler -v '~> 1.7.0'
$ bundle install --path vendor/bundle
```

Once you have the dependencies, verify the unit tests pass with `rake`:

```
$ bundle exec rake
```

If those pass, you're ready to start developing. You can test
the plugin without installing it into your Vagrant environment
by creating a `Vagrantfile` in teh top level directory (it is gitignored).
There is an example supplied in this repository.
(`cp Vagrantfile.example Vagrantfile` and edit.)

Use bundler to execute Vagrant:
```
$ bundle exec vagrant up
```


## Notes

Alpine Linux boxes for testing are available on
[Atlas](https://atlas.hashicorp.com/maier/). Packer templates
for building the boxes are in this
[GitHub repository](https://github.com/maier/packer-templates/).

1. (Atlas)[https://atlas.hashicorp.com/maier/boxes/alpine-3.1.3-x86_64] Alpine 3.1.3 box v1.3.0 is for VirtualBox v5, use box v1.2.0 for VirtualBox v4. The v1.2.0 (built with VirtualBox v4) has intermittent kernel panic when used with VirtualBox v5 and CPUs are set to > 1.
2. Alpine 3.2.3 box (built with VirtualBox v5) is available on (Atlas)[https://atlas.hashicorp.com/maier/boxes/alpine-3.2.3-x86_64] now.

Using `VAGRANT_LOG=info`, Vagrant's `--debug` switch, and `vb.gui = true`
were all very useful when originally developing this guest plugin.
