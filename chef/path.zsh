<<<<<<< HEAD
if [ -d /opt/chefdk1/ ]; then
	export PATH=/opt/chefdk/bin:$PATH
	export PATH=/opt/chefdk/embedded/bin:$PATH
fi
if [ -d ${HOME}/.chefdk/gem/ruby/2.3.0 ]; then
	export PATH=${HOME}/.chefdk/gem/ruby/2.3.0/bin:$PATH
fi
if [ -d ${HOME}/.chefdk/gem/ruby/2.4.0 ]; then
	export PATH=${HOME}/.chefdk/gem/ruby/2.4.0/bin:$PATH
fi