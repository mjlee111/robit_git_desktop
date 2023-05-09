echo -e "\033[40;31m[NOTE] RO:GIT_INSTALLER_robit_17th_myeungjin\033[0m"

sed -i '/^function robit-git-upload/,/^}$/d' ~/.bashrc
sed -i '/^alias robit-git-upload=/d' ~/.bashrc
sed -i '/^function robit-git-clone/,/^}$/d' ~/.bashrc
sed -i '/^alias robit-git-clone=/d' ~/.bashrc
sed -i '/^alias git-ssh=/d' ~/.bashrc
sed -i '/^alias rogit=/d' ~/.bashrc

echo "function robit-git-upload(){
	local filepath=\$1
	sudo scp -rp \$filepath robit_git@121.160.113.219:/home/robit_git/git
}
alias robit-git-upload='robit-git-upload'
function robit-git-clone(){
	local filepath=\$1
	sudo scp -rp robit_git@121.160.113.219:/home/robit_git/git/\$filepath .
	sudo chmod -R a+rw \$filepath
}
alias robit-git-clone='robit-git-clone'
alias git-ssh='ssh robit_git@121.160.113.219'
alias rogit='cd ~/ && ./robit_git1.1'" >> ~/.bashrc

cd
git clone https://github.com/mjlee111/robit_git_desktop.git
cd 
cd robit_git_desktop
mv robit_git1.1 ~/
cd 
rm -rf robit_git_desktop
sudo chmod 777 robit_git1.1
source ~/.bashrc
rm robit_git1.0
