touch .hushlogin
touch .vimrc
sudo apt update && sudo apt upgrade && sudo apt-get update && sudo apt-get upgrade -y 
sudo apt-get install libtool autoconf automake cmake libncurses5-dev g++ pacman cargo python3-dev python3-pip golang-go openjdk-17-jre-headless lua5.1 lua5.2 lua5.3 lua50 tarntool curl zsh tmux fish terminator neofetch dc ripgrep silversearcher-ag fdclone git xclip build-essential lolcat micro &&
sudo add-apt-repository ppa:neovim-ppa/unstable &&
sudo apt-get update &&
sudo apt-get install neovim &&
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
mv Dotfiles/fish   ~/.config &&
mv Dotfiles/htop   ~/.config &&
mv Dotfiles/micro   ~/.config &&
mv Dotfiles/neofetch   ~/.config &&
mv Dotfiles/powerline   ~/.config &&
mv Dotfiles/nvim   ~/.config &&
mv Dotfiles/.bashrc   ~/ &&
mv Dotfiles/.zshrc   ~/ &&
mv Dotfiles/.tmux.conf   ~/ &&
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'