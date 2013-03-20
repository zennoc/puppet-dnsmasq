# Puppet module: dnsmasq

This is a Puppet module for dnsmasq
It provides only package installation and management

Based on Example42 layouts by Alessandro Franceschi / Lab42

Official site: http://www.example42.com

Official git repository: http://github.com/example42/puppet-dnsmasq

Released under the terms of Apache 2 License.

This module requires the presence of Example42 Puppi module in your modulepath.


## USAGE - Basic management

* Install dnsmasq with default settings

        class { 'dnsmasq': }

* Install a specific version of dnsmasq package

        class { 'dnsmasq':
          version => '1.0.1',
        }

* Remove dnsmasq resources

        class { 'dnsmasq':
          absent => true
        }

* Module dry-run: Do not make any change on *all* the resources provided by the module

        class { 'dnsmasq':
          noops => true
        }

* Automatically include a custom subclass

        class { 'dnsmasq':
          my_class => 'example42::my_dnsmasq',
        }

