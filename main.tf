terraform {
  required_providers {
    vagrant = {
      source  = "bmatcuk/vagrant"
      version = "4.1.0"
    }
  }
}

provider "vagrant" {}

resource "vagrant_vm" "k8s_vms" {
  vagrantfile_dir = "."
  get_ports       = true
}

resource "null_resource" "provision_master" {
  depends_on = [vagrant_vm.k8s_vms]

  provisioner "local-exec" {
    command = "vagrant ssh k8s-master -c 'bash /vagrant/provision/install-k8s.sh'"
  }
}

resource "null_resource" "provision_worker1" {
  depends_on = [vagrant_vm.k8s_vms]

  provisioner "local-exec" {
    command = "vagrant ssh k8s-worker1 -c 'bash /vagrant/provision/install-k8s.sh'"
  }
}
