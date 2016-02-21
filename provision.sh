add-apt-get-repository ppa:pi-rho/dev # for newest tmux
apt-get update
apt-get remove vim-tiny -y
apt-get install vim tmux git tree htop xclip -y

# install zsh if it's not installed
if ! cat /etc/shells | grep zsh; then
  echo "zsh is not installed, so we'll install it now"
  apt-get install zsh -y
fi

# avoid asking for authenticy of host for github.com
# (when you connect to new host for the first time)
echo -e "Host github.com\n\tStrictHostKeyChecking no\n" >> ~/.ssh/config

dotfiles_location=/home/vagrant/dotfiles
git clone https://github.com/meal/dotfiles.git $dotfiles_location

cd $dotfiles_location
shopt -s extglob
mv !(.|..|.git|README.md) ..

cd ../ && rm -rf dotfiles

chsh -s $(which zsh) vagrant
