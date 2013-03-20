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

  ### Application related parameters

  $package = $::operatingsystem ? {
    default => 'dnsmasq',
  }

  # General Settings
  $my_class = ''
  $version = 'present'
  $absent = false
  $noops = false

}
