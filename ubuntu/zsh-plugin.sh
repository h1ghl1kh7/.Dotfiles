#!/bin/bash

echo "[*] install zsh plugins & nvim"
if ! command -v nvim &> /dev/null
then
	echo "nvim not found"
	exit
fi

installer_path=$PWD

wget https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh -O - | zsh || true
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/themes/powerlevel10k
git clone https://github.com/jeffreytse/zsh-vi-mode ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}//plugins/zsh-vi-mode

sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'

curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

cd $installer_path

cp .p10k.zsh ~/
mkdir -p ~/.config/nvim/
cp init.vim ~/.config/nvim/init.vim
cp .vimrc ~/
cp .zshrc ~/
cp .tmux.conf ~/
mkdir -p ~/.config/nvim/UltiSnips
cp ./snippets/* ~/.config/nvim/UltiSnips/
cp ./coc-settings.json ~/.vim/
cp ./coc-settings.json ~/.config/nvim/

nvim +PlugInstall +qall
nvim +"CocInstall -sync coc-json coc-pyright coc-clangd coc-docker coc-jedi coc-tsserver coc-html coc-prettier coc-css coc-yaml coc-highlight coc-angular coc-snippets coc-marketplace coc-eslint coc-tabnine" +qall
