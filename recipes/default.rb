include_recipe "libgnutls"
include_recipe "libsasl"

packages = Array.new

case node[:lsb][:codename]
when "lucid"
  include_recipe "libgssapi-krb5"

  packages |= %w/
    libldap-2.4-2
  /
when "precise"
  include_recipe "libgcrypt"
  #include_recipe "libgssapi3-heimdal"

  packages |= %w/
    libldap-2.4-2
  /
end

packages.each do |pkg|
  package pkg do
    action [:install, :upgrade]
  end
end
