hostname = node['hostname']
	
file '/etc/motd' do
	content "Hostname is this: #{hostname}"		# this is called interpolation - ...#{}. A variable really. And "" is required. 
end
