apt-get install -y libssl-dev
apt-get install -y tmux

apt-get install -y build-essential

apt-get install -y gcc

apt-get install -y make build-essential libssl-dev zlib1g-dev libbz2-dev libsqlite3-dev
apt-get install -y supervisor

apt install -y redis-server
redis-server &

git clone https://github.com/pyenv/pyenv.git /opt/pyenv
echo 'export PYENV_ROOT="/opt/pyenv"' >> ~/.bash_profile
echo 'export PATH="$PYENV_ROOT/bin:$PATH"' >> ~/.bash_profile
echo 'eval "$(pyenv init -)"' >> ~/.bash_profile

git clone https://github.com/pyenv/pyenv-virtualenv.git /opt/pyenv/plugins/pyenv-virtualenv
echo 'eval "$(pyenv virtualenv-init -)"' >> ~/.bash_profile
source ~/.bash_profile

mkdir /opt/pyenv/cache
cd /opt/pyenv/cache
wget https://www.python.org/ftp/python/3.5.3/Python-3.5.3.tar.xz

pyenv install 3.5.3
