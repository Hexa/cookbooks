default[:freeradius][:install_method] = "source"
default[:freeradius][:url] = " ftp://ftp.freeradius.org/pub/freeradius"
default[:freeradius][:version] = "2.1.10"
default[:freeradius][:checksum] = "b72d00d8d9c237b6bc3bfe89e6ccd99a7be63e699b305325ea60e04d5ddda4fe"
default[:freeradius][:prefix_dir] = "/opt/local/freeradius"
default[:freeradius][:configure_options] = %W{--prefix=#{freeradius[:prefix_dir]}/#{freeradius[:version]}}
