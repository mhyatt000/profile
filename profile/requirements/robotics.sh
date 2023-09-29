pip install mujoco # may have install problems on OSX

cd $HOME
git clone https://github.com/ARISE/robosuite
cd robosuite
pip install -r requirements.txt
pip install -e .

cd $HOME
git clone https://github.com/ARISE/robomimic
cd robomimic
pip install -r requirements.txt
pip install -e .

# make that into a function that takes a URL and split the URL -1 to get dirname
