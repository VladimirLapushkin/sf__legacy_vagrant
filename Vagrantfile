Vagrant.configure("2") do |config|
  config.vm.box = "ubuntu/xenial64"
	config.vm.provider :virtualbox do |vb|
        	vb.name = "sh_ubuntu_pg84"
	end
  config.vm.synced_folder "c:/work/vagrant/vagrant_data", "/var/vagrant_data"
  config.vm.host_name = "postgresql"
  config.vm.provision :shell, :path => "vagrant_pg84/pg84.sh"
end
