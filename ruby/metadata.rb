maintainer       "Hexa"
maintainer_email "hexa.diary@gmail.com"
license          "All rights reserved"
description      "Installs ruby"
version          "0.0.1"

%w{ ubuntu centos }.each do |os|
  supports os
end
