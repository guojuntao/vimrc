cd ~/.vim_guojuntao

echo 'set runtimepath+=~/.vim_guojuntao

source ~/.vim_guojuntao/vimrc.vim
' > ~/.vimrc

# install vundle
git submodule update --init

# install vundle plugin
vim +PluginInstall +qall

echo "Installed the GuoJuntao Vim configuration successfully! Enjoy :-)"
