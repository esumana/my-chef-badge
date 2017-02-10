#
# Cookbook:: apache
# Recipe:: default
#
# Copyright:: 2017, The Authors, All Rights Reserved.
#
package 'apache2' do
	package_name 'httpd'
	action :install
end

service 'apache2' do
	service_name 'httpd'
	action [:enable, :start]
end

firewalld_service 'apache2' do
	firewalld_service_name 'httpd'
	aciton :add
	zone 'public'
end
