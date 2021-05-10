# Installation Tutorial
Follow the following steps to finish the installation:
1. cd into the current `build` directory, then run setup.sh by:
```
chmod a+x setup.sh
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
conda activate *environment name*
```
5. run python script `setup.py`
