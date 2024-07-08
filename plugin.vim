" Remap keys for gotos
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Remap for rename current word
nmap <leader>rn <Plug>(coc-rename)

" Remap for format selected region
xmap <leader>f  <Plug>(coc-format-selected)
nmap <leader>f  <Plug>(coc-format-selected)
nmap <silent>fm <Plug>(coc-format) 


" MRU 快捷键设置
map <leader>f :MRU<CR>
map <leader>m :MRU
" t 表示在新窗口打开

" tagbar
autocmd FileType * nested :call tagbar#autoopen(0)
" autocmd VimEnter * nested :call tagbar#autoopen(0)
" autocmd TabEnter * nested :call tagbar#autoopen(0)
" autocmd VimEnter * TagbarToggle
" autocmd TabEnter * TagbarToggle
nmap <F8> :TagbarToggle<CR>

let g:tagbar_width = 28

" NERDTree
au VimEnter * NERDTree
