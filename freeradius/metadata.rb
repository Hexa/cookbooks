maintainer       "Hexa"
maintainer_email "hexa@accense.com"
license          "All rights reserved"
description      "Installs/Configures freeradius"
long_description IO.read(File.join(File.dirname(__FILE__), 'README.rdoc'))
version          "0.0.1"

%w{ ubuntu centos }.each do |os|
  supports os
end
