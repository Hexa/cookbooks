## TODO: source.rb
default[:erlang][:install_method] = "source"
default[:erlang][:url] = "http://www.erlang.org/download/"
## TODO: version の指定方法
default[:erlang][:version] = "R14B03"
## checksum は sha256
default[:erlang][:checksum] = "ae0d7c90e860a8be27248114d5c6441a316d44f7e31493d4bae8e7db0cae651d"
default[:erlang][:prefix_dir] = "/opt/local/erlang"
default[:erlang][:configure_options] = %W{--prefix=#{erlang[:prefix_dir]}/#{erlang[:version]} --enable-smp-support --enable-m64-build --enable-halfword-emulator --enable-kernel-poll --without-javac --disable-native-libs --disable-hipe --disable-sctp --enable-threads}
