maintainer       "Thorsten Fischer"
maintainer_email "thorsten@froschi.org"
license          "Apache 2.0"
description      "Installs/Configures libldap"
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          "0.0.1"

%w/ubuntu/.each { |os| supports os }

depends          "libgcrypt", ">= 0.0.1"
depends          "libgnutls", ">= 0.0.1"
depends          "libgssapi-krb5", ">= 0.0.1"
#depends          "libgssapi3-heimdal", ">= 0.0.1"
depends          "libsasl", ">= 0.0.1"
