cd ~/.vim_guojuntao

echo 'source ~/.vim_guojuntao/vimrc.vim
' > ~/.vimrc

# install plug
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# install plugin
vim +PlugInstall +qall

echo "Installed the GuoJuntao Vim configuration successfully! Enjoy :-)"
