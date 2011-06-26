#
# Cookbook Name:: freeradius
# Recipe:: package
#
# Copyright 2011, Hexa
#
# All rights reserved - Do Not Redistribute
#

pkgs = value_for_platform(
  [ "ubuntu" ] => {
    "default" => %w{ libfreeradius2 freeradius-common libperl5.10 libssl0.9.8 libc6 libltdl7 }
  },
  [ "centos" ] => {
    "default" => %w{  }
  },
  "default" => %w{ }
)

pkgs.each do |pkg|
  package pkg do
    action :install
  end
end
