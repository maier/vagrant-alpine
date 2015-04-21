# [Vagrant Alpine Linux Guest](https://github.com/maier/vagrant-alpine)

This is a [Vagrant](http://vagrantup.com/) plugin adding support for [Alpine Linux](http://alpinelinx.org) guests.

> **NOTE:** The vagrant-alpine requires Vagrant 1.7+

## Features

* Detection
* Set hostname
* Configure networking DHCP or static
* Halt/Shutdown the guest
* RSync detection and installation
* NFS client installation

## Installation

```
$ vagrant plugin install vagrant-alpine
```

## Usage

```
$ vagrant init maier/alpine-3.1.3
$ vagrant up
```

## Configuration

The vagrant-alpine plugin does not offer any configuration options.


## Development

1. Clone this repository
1. Run `bundle` -- Use [Bundler](http://gembundler.com) to retrieve dependencies.
1. Run `bundle exec rake` to verify unit tests with `rake`
1. Modify/Add specific feature of interest
1. Modify `Vagrantfile` accordingly for testing the feature
1. Test with `VAGRANT_LOG=1 bundle exec vagrant up`


## Notes

Alpine Linux boxes for testing are available on (Atlas)[https://atlas.hashicorp.com/maier/]. Packer templates for building the boxes are in this [GitHub repository](https://github.com/maier/packer-templates/).

This was new to me so, as fair warning to help save a bunch of time for someone else in my position. Be aware that an older version of Bundler is required by Vagrant. If `bundle` results in error regarding unsuitable version of bundler see [this issue](https://github.com/mitchellh/vagrant/issues/5581). The following two commands fixed the issue for me, as I already had bundler v1.9.x installed.

```
$ rvm @global do gem uninstall bundler
$ gem install bundler -v '~> 1.7.0'
```
