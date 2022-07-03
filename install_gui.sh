touch .hushlogin
touch .vimrc
sudo apt update && sudo apt upgrade && sudo apt-get update && sudo apt-get upgrade -y 
sudo apt-get install libtool autoconf automake cmake libncurses5-dev g++ pacman cargo python3-dev python3-pip golang-go openjdk-17-jre-headless lua5.1 lua5.2 lua5.3 lua50 tarantool curl zsh tmux fish terminator neofetch dc ripgrep silversearcher-ag fdclone git xclip build-essential tasksel lolcat micro cargo &&
sudo add-apt-repository ppa:neovim-ppa/unstable &&
sudo apt-get update &&
sudo apt-get install neovim &&
tasksel &&
systemctl set-default graphical.target &&
sudo apt update && sudo apt -y upgrade &&
sudo apt-get purge xrdp &&
sudo apt install -y xrdp &&
sudo apt install -y xfce4 &&
sudo apt install -y xfce4-goodies &&
sudo cp /etc/xrdp/xrdp.ini /etc/xrdp/xrdp.ini.bak &&
sudo sed -i 's/3389/3390/g' /etc/xrdp/xrdp.ini &&
sudo sed -i 's/max_bpp=32/#max_bpp=32\nmax_bpp=128/g' /etc/xrdp/xrdp.ini &&
sudo sed -i 's/xserverbpp=24/#xserverbpp=24\nxserverbpp=128/g' /etc/xrdp/xrdp.ini &&
echo xfce4-session > ~/.xsession &&
sudo usermod -a -G ssl-cert xrdp &&
sudo nano /etc/xrdp/startwm.sh &&
sudo systemctl restart xrdp &&
sudo /etc/init.d/xrdp start &&
curl https://raw.githubusercontent.com/creationix/nvm/master/install.sh | bash &&
sh -c "$(curl -fsSL https://starship.rs/install.sh)" &&
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)" &&
echo 'eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"' >> /home/abdes000/.profile &&
eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)" &&
brew update &&
brew install gcc bat luajit tree-sitter lsd code-minimap wget starship && 
source ~/.profile &&
nvm install --lts &&
git clone https://github.com/abdes000/Dotfiles.git &&
git clone https://github.com/abdes000/nvimrc3.0.git &&
mv Dotfiles/fish   ~/.config &&
mv Dotfiles/htop   ~/.config &&
mv Dotfiles/micro   ~/.config &&
mv Dotfiles/neofetch   ~/.config &&
mv Dotfiles/powerline   ~/.config &&
mv Dotfiles/nvim   ~/.config &&
mv Dotfiles/.bashrc   ~/ &&
mv Dotfiles/.zshrc   ~/ &&
mv Dotfiles/.tmux.conf   ~/ &&
mv nvimrc3.0/  ~/.config &&
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
