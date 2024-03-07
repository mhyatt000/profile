sudo apt-get install -y  build-essential
sudo apt-get install -y qt5-default qtbase5-dev qt5-qmake  libqt5serialport5-dev make gcc g++ git


cd ~/Downloads

git clone https://github.com/Denvi/Candle.git

cd ~/Downloads/Candle/src

qmake
make
