#
# Cookbook Name:: python
# Recipe:: default
#
# Copyright 2011, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
include_recipe "python:#{node[:python][:install_method]}"
