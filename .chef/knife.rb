local_mode true

chef_repo_dir = File.absolute_path( File.dirname(__FILE__) + "/.." )
cookbook_path ["#{chef_repo_dir}/cookbooks"]
node_path     "#{chef_repo_dir}/nodes"
role_path     "#{chef_repo_dir}/roles"
ssl_verify_mode  :verify_peer

knife[:ssh_attribute] = "knife_zero.host"
knife[:use_sudo] = true

knife[:automatic_attribute_whitelist] = [
  "fqdn/",
  "os/",
  "hostname",
  "ipaddress/",
  "roles/",
  "recipes/",
  "ipaddress/",
  "platform/",
  "platform_version/",
  "platform_version/",
  "cloud/",
  "cloud_v2/",
  "ec2/ami_id/",
  "ec2/instance_id/",
  "ec2/instance_type/",
  "ec2/placement_availability_zone/",
  "chef_packages/"
]
