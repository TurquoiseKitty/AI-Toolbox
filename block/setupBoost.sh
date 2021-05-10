if [ ! -d "$HOME/include/boost" ]; then
    cp -r boost_1_68_0/boost $HOME/include/
fi
cd boost_1_68_0
./bootstrap.sh --with-python=$* --with-python-root=$* --prefix=$HOME

while true
do
    read -r -p "Allow the script to install boost for you? [Y/N] " input
 
    case $input in
        [yY][eE][sS]|[yY])
    # echo "Yes"
    ./b2 install -a --with=all
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
