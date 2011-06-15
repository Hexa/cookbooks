#
# Cookbook Name:: freeradius
# Recipe:: default
#
# Copyright 2011, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
version = node[:freeradius][:version]
install_path = "#{node[:freeradius][:prefix_dir]}/sbin/radiusd"

# ftp://ftp.freeradius.org/pub/freeradius/freeradius-server-2.1.10.tar.gz
remote_file "#{Chef::Config[:file_cache_path]}/freeradius-server-#{version}.tar.gz" do
  source "#{node[:freeradius][:url]}/freeradius-server-#{version}.tar.gz"
  checksum node[:freeradius][:checksum]
  mode "0644"
  not_if { ::File.exists?(install_path)}
end

configure_options = node[:freeradius][:configure_options].join(" ")

bash "build-and-install-freeradius" do
  cwd Chef::Config[:file_cache_path]
  code <<-EOF
  tar zxvf freeradius-server-#{version}.tar.gz
  (cd freeradius-server-#{version} && ./configure #{configure_options})
  (cd freeradius-server-#{version} && make && make install)
  EOF
  not_if { ::File.exists?(install_path)}
end

