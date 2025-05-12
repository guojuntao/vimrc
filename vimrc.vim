call plug#begin('~/.vim/plugged')
Plug 'neoclide/coc.nvim', {'branch': 'release'}

Plug 'tomasr/molokai',
Plug 'altercation/vim-colors-solarized',

Plug 'vim-scripts/a.vim', " 用于 .c .h 文件相互跳转
Plug 'fatih/vim-go', " 用于 golang
" Plug 'davidhalter/jedi-vim', " 用于 python

Plug 'mkitt/tabline.vim', " 用于显示 tab 页编号
" Plug 'ctrlpvim/ctrlp.vim'
Plug 'vim-scripts/mru.vim',
Plug 'scrooloose/nerdtree',
Plug 'Xuyuanp/nerdtree-git-plugin',
" Plug 'majutsushi/tagbar',
Plug 'racer-rust/vim-racer',
Plug 'rust-lang/rust.vim',
Plug 'liuchengxu/vista.vim',

call plug#end()

source ~/.vim_guojuntao/basic.vim
source ~/.vim_guojuntao/plugin.vim

