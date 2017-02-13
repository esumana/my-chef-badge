#
# Cookbook:: apache
# Recipe:: default
#
# Copyright:: 2017, The Authors, All Rights Reserved.
#

if node['platform_family'] == "centos"
	package = "httpd"
elsif node['platform_family'] == "debian"
	package = "apache2"
end

package 'apache2' do
	#package_name 'httpd'
	package_name package	# we now replace 'httpd' with package - the result of our previous evaluation
	action :install
end

service 'apache2' do
	service_name 'httpd'
	action [:enable, :start]
end

