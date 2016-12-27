" Author : guojuntao
" Date   : 2016/12/27

" TODO
" 添加中文 vim help 文档

" 文件编码设置
set encoding=utf-8
set fileencoding=utf-8
set fileencodings=ucs-bom,utf-8,cp936,gb18030,big5,latin1
set termencoding=utf-8
" 避免在非 UTF-8 的系统如 Windows 下，菜单和系统提示出现乱码
" set langmenu=zh_CN.UTF-8
" language message zh_CN.UTF-8

set nocp    " 不兼容 vi
syntax on   " 语法高亮

filetype on " 打开文件类型的检测
filetype plugin on
filetype indent on

set nu              " 显示行号
set cc=80           " 高亮第 80 列
set cursorline      " 高亮光标所在行
set ruler           " 在状态栏显示光标位置的行号和列号
set showcmd         " 显示正在输入的命令
set laststatus=2    " 总是打开状态栏

set display=lastline    " 尽可能多地显示最后一行的内容，而不是用 @ 代替

set t_Co=256        " 支持 256 色
colorscheme molokai " 设置配色方案

set listchars=tab:>-,trail:$    " 设置制表符以及行末空格的显示，set list 生效
" set list

set wildmenu                " 在命令行的上方显示可能的匹配
set wildmode=longest:full   " 提供类似 shell 的补全方式

set incsearch       " 输入搜索命令时，显示目前输入的模式的匹配位置(预搜索)
set hlsearch        " 高亮搜索结果

set backspace=2             " 插入模式下，允许退格键各种删除
set whichwrap=b,s,<,>,~,[,] " 在普通/可视模式下，只允许部分按键回绕

" 缩进设置
set tabstop=4       " tab 键代表的空格数
set shiftwidth=4    " 自动缩进每一步使用的空格数目
set softtabstop=4   " 敲入 tab 键时实际占有的列数
set expandtab       " 插入 tab 键时，使用合适数量的空格代替
" :%retab!          " 按现有设置更新 tab 键

" 状态栏设置
set statusline=%f%m%r\ %=[%{&fileformat}]
               \\ %=[%{&fileencoding}%{(&bomb?\",BOM\":\"\")}]
               \\ [%Y]\ [0x%B]\ [%l,%c%V][%p%%]

" 定义全局搜索快捷键
au BufEnter *.go   map <F5> :vim /\<\>/gj **/*.go<Enter> :cl<Enter>
au BufEnter *.lua  map <F5> :vim /\<\>/gj **/*.lua<Enter> :cl<Enter>
au BufEnter *.[ch] map <F5> :vim /\<\>/gj **/*.[ch]<Enter> :cl<Enter>
map <F6> :cp<Enter>
map <F7> :cn<Enter>

"打开文件时，自动跳转到上次编辑位置
au BufRead * if line("'\"") > 0 && line("'\"") <= line("$")
    \| exe "normal g'\"" | endif

" 寻找 tags 文件顺序，先文件目录，再当前目录
set tags=./tags,tags
