local_mode true

chef_repo_dir = File.absolute_path( File.dirname(__FILE__) + "/.." )
cookbook_path ["#{chef_repo_dir}/cookbooks"]
node_path     "#{chef_repo_dir}/nodes"
role_path     "#{chef_repo_dir}/roles"
ssl_verify_mode  :verify_peer

knife[:ssh_attribute] = "knife_zero.host"
knife[:use_sudo] = true

knife[:automatic_attribute_whitelist] = %w[
  fqdn
  os
  os_version
  hostname
  ipaddress
  roles
  recipes
  ipaddress
  platform
  platform_version
  cloud
  cloud_v2
  chef_packages
]
