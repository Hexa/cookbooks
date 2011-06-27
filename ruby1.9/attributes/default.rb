default[:ruby19][:install_method] = "source"
default[:ruby19][:url] = "http://core.ring.gr.jp/archives/lang/ruby/1.9"
default[:ruby19][:version] = "1.9.2"
default[:ruby19][:patch_level] = "p180"
default[:ruby19][:checksum] = "9027a5abaaadc2af85005ed74aeb628ce2326441874bf3d4f1a842663cde04f4"
default[:ruby19][:prefix_dir] = "/opt/local/ruby"
default[:ruby19][:configure_options] = %W{ --prefix=#{ruby19[:prefix_dir]}/#{ruby19[:version]}/#{ruby19[:patch_level]} }
