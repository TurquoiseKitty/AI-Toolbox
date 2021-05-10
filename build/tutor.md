# Dependency Installation Tutorial
In this tutorial, I will be trying to explain how to set up all the dependency from scratch. Some of the steps have been automated by scripts, but others must be executed in the terminal.
# 0. Execution
To sum up what you need to do:
  1. cd into the build folder, and change mode of file `setup.sh` to be executable: `chmod a+x setup.sh`, then run the setup.sh script by: `./setup.sh`, be sure not to run by `sh setup.sh` instead.


The followings parts summarize what we actually do in each step
# 1. Preliminary
Before the installation, we assume `g++` and `python3` already installed. If you use a conda enviroment for python, make sure the environment is activated before you run `setup.sh`. Also, due to the file size limitation, the zip file `boost_1_68_0.tar.gz` is actually empty. The setup script should help download the required boost installation file, but in case of network problems, you can also choose to download manually from https://sourceforge.net/projects/boost/files/boost/1.68.0/boost_1_68_0.tar.gz/download (or any where else). In this case, be sure to place the downloaded `boost_1_68_0.tar.gz` in place of the original empty `boost_1_68_0.tar.gz`, and extract in place, and remember to choose "N" when the script asks whether to download boost for you.

If you want to use a different version of boost, or other dependencies, besure to modify `setup.sh` accordingly
# 2. Get Enviroment Ready
In this step, we get c++ dependencies ready. We make directorys `~/bin`, `~/include`, `~/lib` and we add them to system path. These are places where g++ and cmake will be looking for libraries. We then install `eigen` and `lpsolve`. 
