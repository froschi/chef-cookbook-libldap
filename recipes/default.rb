packages = Array.new

case node[:lsb][:codename]
when "lucid"
  packages |= %w/
    libldap-2.4-2
  /
when "precise"
  packages |= %w/
    libldap-2.4-2
  /
end

packages.each do |pkg|
  package pkg do
    action [:install, :upgrade]
  end
end
