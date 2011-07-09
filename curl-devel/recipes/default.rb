#
# Cookbook Name:: curl-devel
# Recipe:: default
#
# Copyright 2011, Hexa
#
# All rights reserved - Do Not Redistribute
#
#
ncurses_pkgs = value_for_platform(
  [ "centos" ] => {
    "default" => [ "curl-devel" ]
  },
  "default" => [ "" ]
)

ncurses_pkgs.each do |pkg|
  package pkg do
    action :install
  end
end
