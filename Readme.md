
git ssh from local



## local deployment:
´´´
clone repo 
ansible-playbook local.yml 
´´´


### todo
install k3d
curl -sS https://webi.sh/k9s | sh

install terraform:
sudo apt-get update && sudo apt-get install -y gnupg software-properties-common


https://www.digitalocean.com/community/questions/how-to-move-the-default-var-lib-docker-to-another-directory-for-docker-on-linux

curl --silent --location "https://github.com/weaveworks/weave-gitops/releases/download/v0.9.6/gitops-$(uname)-$(uname -m).tar.gz" | tar xz -C /tmp
sudo mv /tmp/gitops /usr/local/bin
gitops version

vagrant
wget -O- https://apt.releases.hashicorp.com/gpg | gpg --dearmor | sudo tee /usr/share/keyrings/hashicorp-archive-keyring.gpg
echo "deb [signed-by=/usr/share/keyrings/hashicorp-archive-keyring.gpg] https://apt.releases.hashicorp.com $(lsb_release -cs) main" | sudo tee /etc/apt/sources.list.d/hashicorp.list
sudo apt update && sudo apt install vagrant

velero-v1.9.2-linux-amd64/velero
https://github.com/vmware-tanzu/velero/releases/download/v1.9.2/velero-v1.9.2-linux-amd64.tar.gz

apt install gparted
install kind
apt get freecad
install krew get-all
install krew  get-token
operator sdk -> [200~https://sdk.operatorframework.io/docs/installation/
add zsh plugin
git clone https://github.com/dwaynebradley/k3d-oh-my-zsh-plugin.git ~/.oh-my-zsh/custom/plugins/k3d
.zsh -> k3d

install sops
install sops.asc

history file sync to windows pc
sync .kube
sync ~/.ssh

implement ansible tags
tekton install

install  bcompare
Terminal Install
wget https://www.scootersoftware.com/bcompare-4.4.3.26655_amd64.deb
sudo apt update
sudo apt install ./bcompare-4.4.3.26655_amd64.deb


Terminal Uninstall
sudo apt remove bcompare

git config --global user.email "you@example.com"
git config --global user.name "Your Name"
execute role user only if not exist already

.kube config?


## Notes
the color of the terminal is not configured via i3 its system colors

# Bugs

fatal: [localhost]: FAILED! => {"changed": false, "msg": "Failed to update apt cache: W:Updating from such a repository can't be done securely, and is therefore disabled by default., W:See apt-secure(8) manpage for repository creation and user configuration details., E:The repository 'http://ppa.launchpad.net/lazygit-team/release/ubuntu jammy Release' does not have a Release file."}
workaround:
packages_utilities.yml
