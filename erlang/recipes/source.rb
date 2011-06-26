#
# Cookbook Name:: erlang
# Recipe:: default
#
# Copyright 2011, Hexa
#
# All rights reserved - Do Not Redistribute
#

version = node[:erlang][:version]
install_path = "#{node[:erlang][:prefix_dir]}/bin/erl"

remote_file "#{Chef::Config[:file_cache_path]}/otp_src_#{version}.tar.gz" do
  source "#{node[:erlang][:url]}/otp_src_#{version}.tar.gz"
  checksum node[:erlang][:checksum]
  mode "0644"
  not_if { ::File.exists?(install_path)}
end

configure_options = node[:erlang][:configure_options].join(" ")

bash "build-and-install-erlang" do
  cwd Chef::Config[:file_cache_path]
  code <<-EOF
  tar zxvf otp_src_#{version}.tar.gz
  (cd otp_src_#{version} && ./configure #{configure_options})
  (cd otp_src_#{version} && make && make install)
  EOF
  not_if { ::File.exists?(install_path)}
end
