# Class: dnsmasq::params
#
# This class defines default parameters used by the main module class dnsmasq
# Operating Systems differences in names and paths are addressed here
#
# == Variables
#
# Refer to dnsmasq class for the variables defined here.
#
# == Usage
#
# This class is not intended to be used directly.
# It may be imported or inherited by other classes
#
class dnsmasq::params {
  # ## Module related parameters

  $listen = '127.0.0.1'
  $server = ''
  $cache_size = 150
  $no_negcache = false
  $neg_ttl = ''

  # ## Application related parameters

  $package = $::operatingsystem ? {
    default => 'dnsmasq',
  }

  $service = $::operatingsystem ? {
    default => 'dnsmasq',
  }

  $service_status = $::operatingsystem ? {
    default => true,
  }

  $process = $::operatingsystem ? {
    default => 'dnsmasq',
  }

  $process_args = $::operatingsystem ? {
    default => '',
  }

  $process_user = $::operatingsystem ? {
    default => 'dnsmasq',
  }

  $config_dir = $::operatingsystem ? {
    /(?i:Debian|Ubuntu|Mint)/ => '/etc/dnsmasq.d/',
    default                   => '/etc/dnsmasq/',
  }

  $config_file = $::operatingsystem ? {
    /(?i:Debian|Ubuntu|Mint)/ => '/etc/dnsmasq.d/00-main',
    default                   => '/etc/dnsmasq.conf',
  }

  $config_file_mode = $::operatingsystem ? {
    default => '0644',
  }

  $config_file_owner = $::operatingsystem ? {
    default => 'root',
  }

  $config_file_group = $::operatingsystem ? {
    default => 'root',
  }

  $config_file_init = $::operatingsystem ? {
    /(?i:Debian|Ubuntu|Mint)/ => '/etc/default/dnsmasq',
    default                   => '/etc/sysconfig/dnsmasq',
  }

  $pid_file = $::operatingsystem ? {
    /(?i:Debian|Ubuntu|Mint)/ => '/var/run/dnsmasq/dnsmasq.pid',
    default                   => '/var/run/dnsmasq.pid',
  }

  $data_dir = $::operatingsystem ? {
    default => '/etc/dnsmasq',
  }

  $log_dir = $::operatingsystem ? {
    default => '/var/log/dnsmasq',
  }

  $log_file = $::operatingsystem ? {
    default => '/var/log/dnsmasq/dnsmasq.log',
  }

  $port = '53'
  $protocol = 'tcp'

  # General Settings
  $my_class = ''
  $source = ''
  $source_dir = ''
  $source_dir_purge = false
  $template = 'dnsmasq/dnsmasq.erb'
  $options = ''
  $service_autorestart = true
  $version = 'present'
  $absent = false
  $disable = false
  $disableboot = false

  # ## General module variables that can have a site or per module default
  $monitor = false
  $monitor_tool = ''
  $monitor_target = $::ipaddress
  $firewall = false
  $firewall_tool = ''
  $firewall_src = '0.0.0.0/0'
  $firewall_dst = $::ipaddress
  $puppi = false
  $puppi_helper = 'standard'
  $debug = false
  $audit_only = false
  $noops = false

}
