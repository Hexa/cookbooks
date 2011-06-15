#
# Cookbook Name:: ruby
# Recipe:: default
#
# Copyright 2011, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
include_recipe "ruby::#{node[:ruby][:install_method]}"
