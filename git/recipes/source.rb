#
# Cookbook Name:: git
# Recipe:: default
#
# Copyright 2011, Hexa
#
# All rights reserved - Do Not Redistribute
#

version = node[:git][:version]
install_path = "#{node[:git][:prefix_dir]}/#{node[:git][:version]}/bin/git"
remote_file "#{Chef::Config[:file_cache_path]}/git-#{version}.tar.bz2" do
  source "#{node[:git][:url]}/git-#{version}.tar.bz2"
  checksum node[:git][:checksum]
  mode "0644"
  not_if { ::File.exists?(install_path)}
end

configure_options = node[:git][:configure_options].join(" ")

bash "build-and-install-git" do
  cwd Chef::Config[:file_cache_path]
  code <<-EOF
  tar jxvf git-#{version}.tar.bz2
  (cd git-#{version} && ./configure #{configure_options})
  (cd git-#{version} && make && make install)
  EOF
  not_if { ::File.exists?(install_path)}
end
