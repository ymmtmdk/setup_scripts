git clone https://github.com/ymmtmdk/dotfiles $HOME/dotfiles
ruby $HOME/dotfiles/link.rb

curl https://raw.githubusercontent.com/Shougo/dein.vim/master/bin/installer.sh > dein_install.sh
sh dein_install.sh $HOME/.config/nvim/dein
pip3 install --user neovim percol
nvim -c "q"
nvim -c "call dein#update() | q"

echo "" > $HOME/dotfiles/fish/each_arch.fish
mkdir -p $HOME/.config/fish
curl -Lo $HOME/.config/fish/functions/fisher.fish --create-dirs git.io/fisherman
ruby fisher.rb $HOME/dotfiles/fish/fishfile

