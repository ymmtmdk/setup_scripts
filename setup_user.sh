git clone https://github.com/ymmtmdk/dotfiles $HOME/dotfiles
mkdir -p $HOME/.config/fish
ruby $HOME/dotfiles/link.rb

echo "" > $HOME/dotfiles/fish/each_arch.fish
curl -Lo $HOME/.config/fish/functions/fisher.fish --create-dirs git.io/fisherman
ruby fisher.rb $HOME/dotfiles/fish/fishfile

curl https://raw.githubusercontent.com/Shougo/dein.vim/master/bin/installer.sh > dein_install.sh
sh dein_install.sh $HOME/.config/nvim/dein
pip3 install --user neovim percol
nvim -c "call dein#update()" -c "q!"
reset
