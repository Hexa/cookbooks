#
# Cookbook Name:: ncurses-devel
# Recipe:: default
#
# Copyright 2011, Hexa
#
# All rights reserved - Do Not Redistribute
#

ncurses_pkgs = value_for_platform(
  [ "ubuntu" ] => {
    "default" => [ "libncursesw5-dev" ]
  },
  [ "centos" ] => {
    "default" => [ "ncurses-devel" ]
  },
  "default" => [ "" ]
)

ncurses_pkgs.each do |pkg|
  package pkg do
    action :install
  end
end
