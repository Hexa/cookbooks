maintainer       "Hexa"
maintainer_email "YOUR_EMAIL"
license          "All rights reserved"
description      "Installs erlang"
long_description IO.read(File.join(File.dirname(__FILE__), 'README.rdoc'))
version          "0.0.1"

depends "ncurses-devel"

%w{ ubuntu centos }.each do |os|
  supports os
end
