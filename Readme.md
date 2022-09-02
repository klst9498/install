## local deployment:

PWD=$(mkpasswd --method=sha-512)
clone repo and call ansible-playbook local.yml -e USER=klst9498 -e PWD=$PWD



### todo
history file sync to windows pc
sync .kube
sync ~/.ssh

implement ansible tags
tekton install



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