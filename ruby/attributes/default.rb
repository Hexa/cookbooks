default[:ruby][:install_method] = "source"
default[:ruby][:url] = "http://core.ring.gr.jp/archives/lang/ruby/1.8"
default[:ruby][:version] = "1.8.7"
default[:ruby][:patch_level] = "p334"
default[:ruby][:checksum] = "68f68d6480955045661fab3be614c504bfcac167d070c6fdbfc9dbe2c5444bc0"
default[:ruby][:prefix_dir] = "/opt/local/ruby"
default[:ruby][:configure_options] = %W{--prefix=#{ruby[:prefix_dir]}/#{ruby[:version]}}
