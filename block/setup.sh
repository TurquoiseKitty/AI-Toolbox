#!/bin/bash
if [ ! -d "$PWD/eigen-3.3.9" ]; then
    unzip eigen-3.3.9.zip  
fi
if [ ! -d "$PWD/lpsolve" ]; then
    mkdir lpsolve
    tar -zxf lp_solve_5.5.2.11_dev_ux64.tar.gz --directory $PWD/lpsolve
fi
if [ ! -d "$PWD/cmake-3.20.1" ]; then
    tar -zxvf cmake-3.20.1.tar.gz
fi

echo installing boost
while true
do
    read -r -p "Allow the script to download boost for you? [Y/N] " input
 
    case $input in
        [yY][eE][sS]|[yY])
    # echo "Yes"
    rm -rf boost_1_68*
    wget "https://sourceforge.net/projects/boost/files/boost/1.68.0/boost_1_68_0.tar.gz"
    tar -zxvf boost_1_68_0.tar.gz
    break
    ;;
        [nN][oO]|[nN])
    # echo "No"
    break
    ;;
        *)
    echo "Invalid input..."
    ;;
    esac
done
echo setting up environment

if [ ! -d "$HOME/bin" ]; then
    mkdir ~/bin
fi
if [ ! -d "$HOME/include" ]; then
    mkdir ~/include
fi
if [ ! -d "$HOME/lib" ]; then
    mkdir ~/lib
fi

FILE="$HOME/.bashrc"
if [ ! -f "$FILE" ]; then
    touch $FILE
fi
# The sh shell has no syntax to create arrays, but Bash has the syntax
# so, type ./setup.sh instead of sh setup.sh

EnvArray=(
    "export PATH=\"$HOME/bin:\$PATH\""
    "export C_INCLUDE_PATH=\"$HOME/include:\$C_INCLUDE_PATH\""
    "export CPLUS_INCLUDE_PATH=\"$HOME/include:\$CPLUS_INCLUDE_PATH\""
    "export LD_LIBRARY_PATH=\"$HOME/lib:\$LD_LIBRARY_PATH\""
    "export LIBRARY_PATH=\"$HOME/lib:\$LIBRARY_PATH\""
    )
for i in "${EnvArray[@]}"
do
    STRING="$i"
    if  grep -q "$STRING" "$FILE" ; then
        # echo 'the string exists' ; 
        continue;
    else
        # echo 'the string does not exist' ;
        echo -e "\n$STRING" >> "$FILE";
    fi
done

# install eigen
if [ ! -d "$HOME/include/Eigen" ]; then
    cp -r eigen-3.3.9/Eigen $HOME/include/
fi
# install lpsolve
if [ ! -d "$HOME/include/lpsolve" ]; then
    cp -r lpsolve $HOME/include/
    cp lpsolve/lib* $HOME/lib
fi

