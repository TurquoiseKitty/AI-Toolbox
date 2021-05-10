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
conda activate KittyHub
```
5. find python place by typing:
```
which python
```
in my case, the output should be like:
```
/home/turquoisekitty2/anaconda3/envs/KittyHub/bin/python
```
if you are in the base conda environment, the output should be like:
```
/home/turquoisekitty2/anaconda3/bin/python
```
6. you should manually make python reachable by cmake, so you edit .bashrc by:
```
cd ~
```
```
vim .bashrc
```
then insert to the bottom line:
```
export CPLUS_INCLUDE_PATH="$CPLUS_INCLUDE_PATH:/home/turquoisekitty2/anaconda3/envs/KittyHub/include/python3.7"
export C_INCLUDE_PATH="$CPLUS_INCLUDE_PATH:/home/turquoisekitty2/anaconda3/envs/KittyHub/include/python3.7"
```
this is the case for my computer, but i believe, after finishing step 5 and get the python place, you can surely replace `/home/turquoisekitty2/anaconda3/envs/KittyHub` with your own environment root path
