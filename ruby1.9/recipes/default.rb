#
# Cookbook Name:: ruby1.9
# Recipe:: default
#
# Copyright 2011, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
include_recipe "ruby1.9::#{node[:ruby19][:install_method]}"
