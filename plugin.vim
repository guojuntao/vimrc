" taglist 插件设置
let Tlist_Show_One_File = 1     " 不同时显示多个文件的tag，只显示当前文件的
let Tlist_Exit_OnlyWindow = 1   " 如果taglist窗口是最后一个窗口，则退出vim
let Tlist_Use_Right_Window = 1  " 在右侧窗口中显示taglist窗口
let Tlist_Auto_Open = 1         " 启动vim后，自动打开taglist窗口
" 对插件做了改动，对这个变量添加`打开新标签页也自动打开taglist窗口`的功能

" cscope 设置
if filereadable("cscope.out")
    cs add cscope.out
endif
" leader 按键详情可以通过 help leader 查看
map <Leader>c :cs find c 

" syntastic 插件设置
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_go_checkers = ['go']
