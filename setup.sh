#!/bin/sh

ZSH_PATH=$(which zsh)
chsh -s $ZSH_PATH

sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

sed -i -e 's/robbyrussell/af-magic/g' ~/.zshrc

if [ ! -d ~/.vim/bundle/Vundle.vim ]; then
    git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
fi

BASEDIR=$(dirname "$0")
echo "setup dir: $BASEDIR"

cp $BASEDIR/.vimrc ~/
vim +PluginInstall +qall

cp $BASEDIR/.tmux.conf ~/
tmux source-file ~/.tmux.conf
