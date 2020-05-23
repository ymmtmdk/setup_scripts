if which brew ; then
  echo brew
else
  echo no brew
  /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

# echo cache sudo password
# sudo echo start

# ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

brew cask install karabiner-elements iterm2

brew install ruby fish neovim python3 peco

gem install bundler neovim

pip3 install --user neovim

# git clone https://github.com/ymmtmdk/dotfiles $HOME/dotfiles
mkdir -p $HOME/.config/fish
ruby $HOME/dotfiles/link.rb

mkdir $HOME/mybin

curl https://raw.githubusercontent.com/Shougo/dein.vim/master/bin/installer.sh > dein_install.sh
sh dein_install.sh $HOME/.config/nvim/dein

nvim -c "call dein#update()" -c "q!"

# echo "" > $HOME/dotfiles/fish/each_arch.fish
curl https://git.io/fisher --create-dirs -sLo ~/.config/fish/functions/fisher.fish

#ruby fisher.rb $HOME/dotfiles/fish/fishfile
fish -c 'fisher'

reset
echo ok
