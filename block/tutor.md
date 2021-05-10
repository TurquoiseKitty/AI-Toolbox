# Installation Tutorial
Follow the following steps to finish the installation:
1. cd into the current `block` directory, then run setup.sh by:
```
chmod a+x setup.sh
```
```
chmod a+x setup2.sh
```
```
chmod a+x setupBoost.sh
```
```
./setup.sh
```
2. install cmake by:
```
cd cmake-3.20.1
```
```
./bootstrap --prefix=$HOME
```
```
make
```
```
make install
```
3. restart the terminal to make changes work(eg: disconnect from server and reconnect)
4. activate the python environment, in my case, this goes like:
```
conda activate KittyHub
```
pip install:
```
pip install python-dev-tools
```
and run python setup:
```
python setup.py
```
```
source ~/.bashrc
```
5. now the environment should be OK to go. Do the rest as the author has instructed:
```
mkdir build
cd build/
cmake -DMAKE_PYTHON=1 ..
make
```
