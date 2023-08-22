#!/bin/sh



echo "[*]gdb gef"

installer_path=$PWD

echo "[+] Checking for required dependencies..."
if command -v git >/dev/null 2>&1 ; then
    echo "[-] Git found!"
else
    echo "[-] Git not found! Aborting..."
    echo "[-] Please install git and try again."
fi

if [ -f ~/.gdbinit ] || [ -h ~/.gdbinit ]; then
    echo "[+] backing up gdbinit file"
    cp ~/.gdbinit ~/.gdbinit.back_up
fi

# Install gef
echo "[+] Download Gef & Gef-extra"
wget -O ~/.gef.py -q https://gef.blah.cat/py
git clone https://github.com/hugsy/gef-extras ~/.gef-extras

echo "[+] Download Pwngdb"
git clone https://github.com/scwuaptx/Pwngdb.git ~/.Pwngdb

cd $installer_path

echo "[+] Setting .gdbinit & .gef.rc"
cp gdbinit ~/.gdbinit
cp gef.rc ~/.gef.rc

echo "[+] Done"
