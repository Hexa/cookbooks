default[:git][:install_method] = "source"
default[:git][:url] = "http://kernel.org/pub/software/scm/git"
default[:git][:version] = "1.7.6"
default[:git][:checksum] = "778795cece63cd758192378f3a999870cea290181b3a4c9de573c77192561082"
default[:git][:prefix_dir] = "/opt/local/git"
default[:git][:configure_options] = %W{ --prefix=#{git[:prefix_dir]}/#{git[:version]} }
