" 关闭vi兼容模式
set nocompatible

" 开启语法高亮
syntax on

" 显示行号
set number

" 检测文件的类型
filetype plugin indent on

" 自动缩进
set autoindent

" 智能对齐方式
set smartindent

" 一个tab是4个字符
set tabstop=4

" 按一次tab前进4个字符
set softtabstop=4

" 用空格代替tab
set expandtab

" 打开光标的行列位置显示功能
set ruler

" 设置字体
"set guifont=Monaco\12

" 设置背景颜色
set background=dark

" 设置256色
set t_Co=256

" Vundle
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

"colorscheme desert256
"colorscheme codeschool
"colorscheme solarized
"colorscheme molokai
"colorscheme distinguished

" let Vundle manage Vundle
Bundle 'gmarik/vundle'

" my Bundel here:
"
" original repos on github
Bundle 'scrooloose/nerdtree'
Bundle 'mattn/emmet-vim'
Bundle 'kien/ctrlp.vim'
Bundle 'majutsushi/tagbar'
Bundle 'Valloric/YouCompleteMe'
Bundle 'marijnh/tern_for_vim'
Bundle 'scrooloose/syntastic'
Bundle 'flazz/vim-colorschemes'

" vim-scripts repos
"Bundle 'taglist.vim'

"""""""""""""NERDTree设置""""""""""""""""
let NERDTreeShowBookmark = 1

"""""""""""""""Ctrlp设置"""""""""""""""""
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_working_path_mode = 'ra'
let g:ctrlp_match_window_bottom = 1
let g:ctrlp_max_height = 10
let g:ctrlp_custom_ignore ={
\ 'dir': '\v[\/]\.(git|hg|svn)$',
\ 'file': '\v\.(exe|so|dll)$',
\ 'link': 'some_bad_symbolic_links',
\ }

""""""""""""""""Tagbar设置"""""""""""""""""
let g:tagbar_autofocus = 1
let g:tagbar_sort = 0
let g:tagbar_compact = 1
let g:tagbar_indent = 1
let g:tagbar_autoshowtag = 1

"""""""""""""""Taglist设置"""""""""""""""""
"let Tlist_Auto_Open = 1                 "在启动vim后，自动打开taglist窗口
"let Tlist_Ctags_Cmd = '/usr/bin/ctags'  "设定ctags的位置
"let Tlist_Use_Right_Window = 1          " 1为让窗口显示在右边，0为左边
"let Tlist_Exit_OnlyWindow = 1           "当taglist是最后一个分割窗口时，自动退出vim
"let Tlist_File_Fold_Auto_Close = 1      "当同时显示多个文件中的tag时，设置为1，可使taglist只显示当前文件tag，其它文件的tag都被折叠起来
"let Tlist_Show_One_File = 1             "只显示一个文件中的tag，默认为显示多个
"let Tlist_Sort_Type = 'name'            "Tag的排序规则，以名字排序。默认是以在文件中出现的顺序排序

"""""""""""""YouCompleteMe设置"""""""""""""
let g:ycm_filetype_blacklist = {
\ 'tagbar': 1,
\ 'qf': 1,
\ 'notes': 1,
\ 'markdown': 1,
\ 'unite': 1,
\ 'text': 1,
\ 'vimwiki': 1,
\ 'gitcommit': 1,
\ }

"map <F7> :TlistToggle<CR>
map <F7> :TagbarToggle<CR>
map <F8> :NERDTreeToggle<CR>
