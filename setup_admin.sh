apt-get install -y software-properties-common
add-apt-repository -y ppa:brightbox/ruby-ng
add-apt-repository -y ppa:neovim-ppa/stable
apt-add-repository -y ppa:fish-shell/release-2
apt-get update
apt-get install -y apt-transport-https ca-certificates
apt-get install -y libssl-dev libreadline-dev zlib1g-dev
apt-get install -y git curl
apt-get install -y fish
apt-get install -y ruby
apt-get install -y python3-dev python3-pip
apt-get install -y neovim
apt-get install -y aptitude

curl -fsSL https://download.docker.com/linux/ubuntu/gpg | apt-key add -
add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"
apt-get update

apt-get install -y docker-ce

pip3 install docker-compose

mkdir -p /usr/local/etc/profile.d/
curl https://raw.githubusercontent.com/rupa/z/master/z.sh > /usr/local/etc/profile.d/z.sh

