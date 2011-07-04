#
# Cookbook Name:: python
# Recipe:: default
#
# Copyright 2011, Hexa
#
# All rights reserved - Do Not Redistribute
#

version = node[:python][:version]
install_path = "#{node[:python][:prefix_dir]}/#{node[:python][:version]}/bin/python"
remote_file "#{Chef::Config[:file_cache_path]}/Python-#{version}.tar.bz2" do
  source "#{node[:python][:url]}/Python-#{version}.tar.bz2"
  checksum node[:python][:checksum]
  mode "0644"
  not_if { ::File.exists?(install_path)}
end

configure_options = node[:python][:configure_options].join(" ")

bash "build-and-install-python" do
  cwd Chef::Config[:file_cache_path]
  code <<-EOF
  tar jxvf Python-#{version}.tar.bz2
  (cd Python-#{version} && ./configure #{configure_options})
  (cd Python-#{version} && make && make install)
  EOF
  not_if { ::File.exists?(install_path)}
end
