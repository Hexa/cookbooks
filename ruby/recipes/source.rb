#
# Cookbook Name:: ruby
# Recipe:: default
#
# Copyright 2011, Hexa
#
# All rights reserved - Do Not Redistribute
#

version = node[:ruby][:version]
patch_level = node[:ruby][:patch_level]
install_path = "#{node[:ruby][:prefix_dir]}/bin/ruby"

remote_file "#{Chef::Config[:file_cache_path]}/ruby-#{version}-#{patch_level}.tar.gz" do
  source "#{node[:ruby][:url]}/ruby-#{version}-#{patch_level}.tar.gz"
  checksum node[:ruby][:checksum]
  mode "0644"
  not_if { ::File.exists?(install_path)}
end

configure_options = node[:ruby][:configure_options].join(" ")

bash "build-and-install-ruby" do
  cwd Chef::Config[:file_cache_path]
  code <<-EOF
  tar zxvf ruby-#{version}-#{patch_level}.tar.gz
  (cd ruby-#{version}-#{patch_level} && ./configure #{configure_options})
  (cd ruby-#{version}-#{patch_level} && make && make install)
  EOF
  not_if { ::File.exists?(install_path)}
end
