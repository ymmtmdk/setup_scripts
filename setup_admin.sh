sudo add-apt-repository -y ppa:brightbox/ruby-ng
sudo add-apt-repository -y ppa:neovim-ppa/stable
sudo apt-add-repository -y ppa:fish-shell/release-2
sudo apt-get update
sudo apt-get install -y software-properties-common
sudo apt-get install -y apt-transport-https ca-certificates
sudo apt-get install -y libssl-dev libreadline-dev zlib1g-dev
sudo apt-get install -y git curl string
sudo apt-get install -y fish
sudo apt-get install -y ruby
sudo apt-get install -y python-dev python-pip python3-dev python3-pip
sudo apt-get install -y neovim
sudo apt-get install -y aptitude

sudo curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"
sudo apt-get update

sudo apt-get install -y docker-ce

sudo pip install docker-compose

