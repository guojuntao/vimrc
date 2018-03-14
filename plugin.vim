" tagbar autoopen
autocmd FileType * nested :call tagbar#autoopen(0)
nmap <F8> :TagbarToggle<CR>

" cscope 设置
if filereadable("cscope.out")
    cs add cscope.out
endif
" leader 按键详情可以通过 help leader 查看,默认是\
map <Leader>c :cs find c 
map <Leader>r :GoRef
map  :GoRef

" syntastic 插件设置
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_go_checkers = ['go']

let g:jedi#goto_definitions_command = "<C-]>"
let g:jedi#usages_command = "<C-[>"

" MRU 快捷键设置
map <leader>f :MRU<CR>
map <leader>m :MRU
" t 表示在新窗口打开
