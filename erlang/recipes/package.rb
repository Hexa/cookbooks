#
# Cookbook Name:: erlang
# Recipe:: default
#
# Copyright 2011, Hexa
#
# All rights reserved - Do Not Redistribute
#
include_recipe "erlang::#{node[:erlang][:install_method]}"
