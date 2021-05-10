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
5. install boost manually. Stay in the current `block` folder, and run:

```
cp -r boost_1_68_0/boost $HOME/include/
```
```
cd boost_1_68_0
```
```
./bootstrap.sh --with-python=$HOME/anaconda3/envs/ENV/include/python3.8 --with-python-root=$HOME/anaconda3/envs/ENV/include/python3.8 --prefix=$HOME
./b2 install -a --with=all
```
6. now the environment should be OK to go. Do the rest as the author has instructed:
```
mkdir build
cd build/
cmake -DMAKE_PYTHON=1 ..
make
```
