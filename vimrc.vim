set nocompatible              " 去除VI一致性,必须
filetype off                  " 必须

" 设置包括vundle和初始化相关的runtime path
set rtp+=~/.vim_guojuntao/bundle/Vundle.vim
call vundle#begin('~/.vim_guojuntao/bundle')

" 让vundle管理插件版本,必须
Plugin 'VundleVim/Vundle.vim'

" 配色插件
Plugin 'tomasr/molokai'
Plugin 'altercation/vim-colors-solarized'

Plugin 'vim-scripts/a.vim' " 用于 .c .h 文件相互跳转
Plugin 'fatih/vim-go' " 用于 golang
Plugin 'davidhalter/jedi-vim' " 用于 python

Plugin 'mkitt/tabline.vim' " 用于显示 tab 页编号
" Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'vim-scripts/mru.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'Xuyuanp/nerdtree-git-plugin'
Plugin 'majutsushi/tagbar'
Plugin 'racer-rust/vim-racer'
Plugin 'rust-lang/rust.vim'

" 你的所有插件需要在下面这行之前
call vundle#end()            " 必须
filetype plugin indent on    " 必须 加载vim自带和插件相应的语法和文件类型相关脚本
"
" 查阅 :h vundle 获取更多细节和wiki以及FAQ
" 将你自己对非插件片段放在这行之后

source ~/.vim_guojuntao/basic.vim
source ~/.vim_guojuntao/plugin.vim
