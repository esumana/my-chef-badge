#
# Cookbook:: firewalld
# Recipe:: default
#
# Copyright:: 2017, The Authors, All Rights Reserved.


# all defaults
  firewall 'default'

# enable platform default firewall
  firewall 'default' do
    action :install
  end

# increase logging past default of 'low'
  firewall 'default' do
     log_level :high
     action    :install
  end

#firewalld_rich_rule "ssh_add" do
#  zone 'public'
#  family 'ipv4'
#  source_address '192.168.0.201/32'
#  service_name 'ssh'
#  log_prefix 'ssh'
#  log_level 'info'
#  limit_value '1/m'
#  firewall_action 'accept'
#  action :add
#end
#
#firewalld_service 'tftp' do
#    action :add
#    zone   'public'
#end
