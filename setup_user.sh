git clone https://github.com/ymmtmdk/dotfiles $HOME/dotfiles
mkdir -p $HOME/.config/fish
ruby $HOME/dotfiles/link.rb

echo "" > $HOME/dotfiles/fish/each_arch.fish
curl -Lo $HOME/.config/fish/functions/fisher.fish --create-dirs git.io/fisherman
ruby fisher.rb $HOME/dotfiles/fish/fishfile

curl -LO https://github.com/peco/peco/releases/download/v0.5.1/peco_linux_386.tar.gz
mkdir $HOME/mybin
tar xvf peco_linux_386.tar.gz
cp peco_linux_386/peco $HOME/mybin
curl -LO https://raw.githubusercontent.com/ymmtmdk/peco_select_history_with_c/master/fish_history.c
gcc -o $HOME/mybin/fish_history -O3 fish_history.c

curl https://raw.githubusercontent.com/Shougo/dein.vim/master/bin/installer.sh > dein_install.sh
sh dein_install.sh $HOME/.config/nvim/dein

pip3 install --user neovim
nvim -c "call dein#update()" -c "q!"
reset
echo ok
