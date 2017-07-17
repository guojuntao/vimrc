cd ~/.vim_guojuntao

echo 'set runtimepath+=~/.vim_guojuntao

source ~/.vim_guojuntao/vimrc.vim
' > ~/.vimrc

# 在 golang 中使用 taglist
echo '--langdef=Go
--langmap=Go:.go
--regex-Go=/func([ \t]+\([^)]+\))?[ \t]+([a-zA-Z0-9_]+)/\2/f,func/
--regex-Go=/var[ \t]+([a-zA-Z_][a-zA-Z0-9_]+)/\1/v,var/
--regex-Go=/type[ \t]+([a-zA-Z_][a-zA-Z0-9_]+)/\1/t,type/' > ~/.ctags

# install vundle
# TODO: use subtree instead submodule
git submodule update --init

# install vundle plugin
vim +PluginInstall +qall

echo "Installed the GuoJuntao Vim configuration successfully! Enjoy :-)"
