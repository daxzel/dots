
if [ ! -d ~/.vim/bundle/Vundle.vim ]; then
    git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
fi

BASEDIR=$(dirname "$0")
echo "setup dir: $BASEDIR"

cp $BASEDIR/.vimrc ~/

vim +PluginInstall +qall
