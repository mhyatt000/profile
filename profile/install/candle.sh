sudo apt-get install -y  build-essential
sudo apt-get install -y qt5-default qt5-qmake libqt5serialport5-dev make gcc g++ git

cd ~/Downloads

git clone https://github.com/Denvi/Candle.git

cd Candle/src

qmake
make
