if [ -d ${HOME}/.chefdk/gem/ruby/2.7.0 ]; then
#	export PATH=${HOME}/.chefdk/gem/ruby/2.7.0/bin:$PATH
fi
if [ -d /opt/chef-workstation/embedded/bin ]; then
	export PATH=/opt/chef-workstation/embedded/bin:$PATH
	export PATH=/opt/chef-workstation/bin:$PATH
fi
if [ -d /opt/chefdk/ ]; then
	export PATH=/opt/chefdk/bin:$PATH
	export PATH=/opt/chefdk/embedded/bin:$PATH
fi
