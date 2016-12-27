set nocompatible              " 去除VI一致性,必须
filetype off                  " 必须

" 设置包括vundle和初始化相关的runtime path
set rtp+=~/.vim_guojuntao/bundle/Vundle.vim
call vundle#begin('~/.vim_guojuntao/bundle')

" 让vundle管理插件版本,必须
Plugin 'VundleVim/Vundle.vim'

" taglist 插件做了修改,直接放在 github repo 里,不直接从互联网下载
" a.vim 插件直接放到 github repo
" molokai 配色直接放到 github repo

Plugin 'altercation/vim-colors-solarized'
Plugin 'scrooloose/syntastic'
Plugin 'fatih/vim-go'

" 你的所有插件需要在下面这行之前
call vundle#end()            " 必须
filetype plugin indent on    " 必须 加载vim自带和插件相应的语法和文件类型相关脚本
"
" 查阅 :h vundle 获取更多细节和wiki以及FAQ
" 将你自己对非插件片段放在这行之后

source ~/.vim_guojuntao/basic.vim
source ~/.vim_guojuntao/plugin.vim
