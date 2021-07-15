#!/bin/bash

chmod +x covid
echo "installing..."

which python > 2&>1 || pkg install python -y
which python3 > 2&>1 || pkg install python3 -y

pip install -r requirements.txt

clear

cp covid -t $PATH

if [ -e $PATH/covid ]; then
echo
echo "Tool Installed, Now use  covid -c countryName"
fi
