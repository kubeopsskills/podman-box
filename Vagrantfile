Vagrant.configure("2") do |config|
  config.vm.box = "generic/fedora33"

  config.vm.provider "virtualbox" do |v|
    v.memory = 4096
    v.cpus = 2
  end

  config.vm.provision "shell", inline: <<-SHELL
    dnf -y install podman
    systemctl enable podman.socket --user
    systemctl start podman.socket --user
  SHELL
end
