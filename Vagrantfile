Vagrant.configure("2") do |config|
  config.vm.box = "bento/centos-7.5"
  config.vm.network "forwarded_port", guest: 80, host: 8086
  ####### Pre-provision ###
  #config.vm.provision :shell, path: "install.sh"
  ####### Provision #######
  config.vm.provision "ansible_local" do |ansible|
#    ansible.raw_arguments  = "--version"
    ansible.playbook = "provision/playbook.yml"
    ansible.verbose = true
  end
end
