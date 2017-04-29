# curl -L https://raw.githubusercontent.com/ymmtmdk/setup_scripts/master/setup_osx.sh | sh
echo cache sudo password
sudo echo start

# ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

brew tap caskroom/cask
brew tap neovim/neovim
brew cask install dropbox karabiner iterm2

brew install reattach-to-user-namespace ruby readline zlib fish neovim python3 peco


# rbenv install 2.4.1
pip3 install --user neovim

sudo easy_install pip
pip install --user neovim

git clone https://github.com/ymmtmdk/dotfiles $HOME/dotfiles
mkdir -p $HOME/.config/fish
ruby $HOME/dotfiles/link.rb

#curl -LO https://github.com/peco/peco/releases/download/v0.5.1/peco_linux_386.tar.gz
mkdir $HOME/mybin
#tar xvf peco_linux_386.tar.gz
#cp peco_linux_386/peco $HOME/mybin

curl https://raw.githubusercontent.com/Shougo/dein.vim/master/bin/installer.sh > dein_install.sh
sh dein_install.sh $HOME/.config/nvim/dein

nvim -c "call dein#update()" -c "q!"

# echo "" > $HOME/dotfiles/fish/each_arch.fish
curl -Lo $HOME/.config/fish/functions/fisher.fish --create-dirs git.io/fisherman
#ruby fisher.rb $HOME/dotfiles/fish/fishfile
fish -c 'fisher'

reset
echo ok
