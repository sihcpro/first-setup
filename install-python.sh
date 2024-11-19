sudo apt update
sudo apt install -y build-essential checkinstall
sudo apt install -y libncursesw5-dev libssl-dev libsqlite3-dev tk-dev libgdbm-dev libc6-dev libbz2-dev libffi-dev zlib1g-dev

sudo apt install -y libssl-dev zlib1g-dev

# For virtualenv-wrapper
sudo apt install -y pwgen

cd /opt
if [ ! -d 'Python-3.8.12' ]; then
  if [ ! -f 'Python-3.8.12.tgz' ]; then
    sudo wget https://www.python.org/ftp/python/3.8.12/Python-3.8.12.tgz
  fi
  sudo tar xzf Python-3.8.12.tgz
fi

cd Python-3.8.12
sudo ./configure --enable-optimizations
sudo make altinstall

python3.8 -V

cd /opt
sudo rm -f Python-3.8.12.tgz
cd ~


echo 'get pip'
curl https://bootstrap.pypa.io/get-pip.py >> get-pip.py
python3.8 get-pip.py

sudo apt install libncurses-dev
pip install gnureadline
