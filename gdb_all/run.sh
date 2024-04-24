#!/bin/sh

echo "[*]gdb peda+pwndbg+gef"

installer_path=$PWD

cd "/tools"


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


# Install peda
if [ -d /tools/peda ] || [ -h /tools/peda ]; then
	echo "[+] Pass Download Peda"
else 
	echo "[+] Download Peda"
	git clone https://github.com/longld/peda.git /tools/peda
fi



# Install pwndbg
if [ -d /tools/pwndbg ] || [ -h /tools/pwndbg ]; then
	echo "[*] Pass Download Pwndbg"
else
	echo "[+] Download Pwndbg"
	git clone https://github.com/pwndbg/pwndbg.git /tools/pwndbg

	cd /tools/pwndbg
	./setup.sh
fi

# Install gef
if [ -d /tools/gef ] || [ -h /tools/gef ]; then
	echo "[*] Pass Download Gef"
else
	echo "[+] Download Gef"
	wget -O /tools/gef.py -q https://gef.blah.cat/py
fi

cd $installer_path

echo "[+] Setting .gdbinit..."
cp gdbinit ~/.gdbinit

{
  echo "[+] Creating files..."
    sudo cp bin/gdb-peda /usr/bin/gdb-peda &&\
    sudo cp bin/gdb-pwndbg /usr/bin/gdb-pwndbg &&\
    sudo cp bin/gdb-gef /usr/bin/gdb-gef
} || {
  echo "[-] Permission denied"
    exit
}

{
  echo "[+] Setting permissions..."
    sudo chmod +x /usr/bin/gdb-*
} || {
  echo "[-] Permission denied"
    exit
}

echo "[+] Done"
