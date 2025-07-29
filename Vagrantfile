Vagrant.configure("2") do |config|
  config.vm.box = "bento/ubuntu-22.04"

  config.vm.define "k8s-master" do |master|
    master.vm.hostname = "k8s-master"
    master.vm.network "private_network", ip: "192.168.56.10"
  end

  config.vm.define "k8s-worker1" do |worker|
    worker.vm.hostname = "k8s-worker1"
    worker.vm.network "private_network", ip: "192.168.56.11"
  end
end