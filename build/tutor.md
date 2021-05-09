# Dependency Installation Tutorial
In this tutorial, I will be trying to explain how to set up all the dependency from scratch. Most of the steps have been automated by scripts, but in case of exceptional cases, some personalized editing may still be required.
# 1. Preliminary
Before the installation, we assume `g++` and `python3` already installed. If you use a conda enviroment for python, make sure the environment is activated before you run `setup.sh`. Also, due to the file size limitation, the directory `boost_1_68` and zip file `boost_1_68_0.tar.gz` are actually empty. The setup script should help download the required boost installation file, but in case of network problems, you can also choose to download manually from https://sourceforge.net/projects/boost/files/boost/1.68.0/boost_1_68_0.tar.gz/download (or any where else). In this case, be sure to place the downloaded `boost_1_68_0.tar.gz` in place of the original empty `boost_1_68_0.tar.gz`, and extract in place, and remember to choose "N" when the script asks whether to download boost for you.

If you want to use a different version of boost, or other dependencies, besure to modify `setup.sh` accordingly
# 2. Get Enviroment Ready
