#
# Cookbook Name:: freeradius
# Recipe:: default
#
# Copyright 2011, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
include_recipe "freeradius::#{node[:freeradius][:install_method]}"
