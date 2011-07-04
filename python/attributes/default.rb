default[:python][:install_method] = "source"
default[:python][:url] = "http://www.python.org/ftp/python/2.7.2"
default[:python][:version] = "2.7.2"
default[:python][:checksum] = "5057eb067eb5b5a6040dbd0e889e06550bde9ec041dadaa855ee9490034cbdab"
default[:python][:prefix_dir] = "/opt/local/python"
default[:python][:configure_options] = %W{ --prefix=#{python[:prefix_dir]}/#{python[:version]}/ }
