Check installation (PowerShell or Git Bash):

terraform -version
vagrant --version
VBoxManage --version

terraform-vagrant-k8s-lab/
├── main.tf
├── Vagrantfile
├── provision/
│   └── install-k8s.sh

terraform init
terraform fmt
terraform validate 
terraform apply 
terraform destory 

