set ts=4
set sw=4
set nu
"colorscheme desert

set t_Co=256 " #告知molokai，终端支持256色。
"let g:molokai_original = 1 
"colorscheme molokai 

set fileencodings=utf-8,gb2312,gbk,gb18030,big5
set fenc=utf-8
set enc=utf-8

"set fileencodings=utf8,gb2312
"set fenc=gb2312
"set termencoding=gb2312
set fileformats=unix
"set encoding=prc
set history=300
set number 

filetype plugin on
filetype indent on 
autocmd! bufwritepost vimrc source ~/.vim_runtime/vimrc
set backspace=indent,eol,start

set wildmenu 
set hid  "Change buffer - without saving
set ignorecase  "Ignore case when searching
set hlsearch  "Highlight search things
set incsearch "Make search act like search in modern browsers

set magic  "Set magic on, for regular expressions

set showmatch  "Show matching bracets when text indicator is over them

set mat=2  "How many tenths of a second to blink

set noerrorbells
set novisualbell
syntax enable    

"set tags+=~/work/pratice/tags
set tags+=~/.vim/systags
map <S-T> :!ctags -R --c++-kinds=+p --fields=+iaS --extra=+q<CR>
map <S-F> :DoxyCppFunction<CR>
map <S-H> :DoxyCppFILEHeader<CR>
map <S-B> :DoxyCppBriefAfterMember<CR>
map  <F7>   <Plug>ShowFunc 
map! <F7>   <Plug>ShowFunc 

let Tlist_Use_LEFT_Window=1
let Tlist_File_Fold_Auto_Close=1
let Tlist_Show_One_File=1
let Tlist_GainFocus_On_ToggleOpen=1
let Tlist_Exit_OnlyWindow=1
"let g:winManagerWindowLayout=’FileExplorer’
nmap tl :Tlist<cr>
nmap ts :TlistSync<cr>


"map 1 1gt
"map 2 2gt
"map 3 3gt
"map 4 4gt
"map 5 5gt
"map 6 6gt
"map 7 7gt
"map 8 8gt
"map 9 9gt
"map 0 :tablast<cr>
"map <S-Q> :x<CR>


set smarttab  
set tabstop=4  
set shiftwidth=4  
set expandtab
set pastetoggle=<F11>
"继承前一行的缩进方式，特别适用于多行注释
""set autoindent
""
"为C程序提供自动缩进
""set smartindent
""使用C样式的缩进
set cindent


" Uncomment the following to have Vim jump to the last position when                                                       
" reopening a file
if has("autocmd")
	au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif

augroup filetype
   
    autocmd! BufRead,BufNewFile BUILD set filetype=blade
    au! BufRead,BufNewFile *.proto setfiletype proto
augroup end


"highlight Pmenu ctermbg=red gui=bold
"highlight PmenuSel ctermbg=yellow gui=bold
filetype plugin on

"hi Pmenu guibg=#AE81FF
"hi PmenuSel ctermfg=7 ctermbg=4 guibg=#AE81FF guifg=#ffffff
"hi MatchParen ctermfg=7 ctermbg=4
