set fenc=utf-8 
set fencs=utf-8,usc-bom,euc-jp,gb18030,gbk,gb2312,cp936 
set nocompatible  
set history=100  
set confirm  
set clipboard+=unnamed  
filetype on  
set completeopt=longest,menu 
filetype plugin on  
filetype indent on  
set viminfo+=!  
set iskeyword+=_,$,@,%,#,-  
syntax enable
syntax on  
:highlight OverLength ctermbg=red ctermfg=white guibg=red guifg=white 
highlight StatusLine guifg=SlateBlue guibg=Yellow 
highlight StatusLineNC guifg=Gray guibg=White  
set nobackup  
setlocal noswapfile 
set bufhidden=hide  
set linespace=0  
set wildmenu  
set ruler 
set rulerformat=%20(%2*%<%f%=\ %m%r\ %3l\ %c\ %p%%%)  
set cmdheight=2  
set backspace=2  
set whichwrap+=<,>,h,l  
set mouse=a 
set selection=exclusive 
set selectmode=mouse,key  
set shortmess=atI  
set report=0  
set noerrorbells  
set fillchars=vert:\ ,stl:\ ,stlnc:\  
set showmatch  
set matchtime=5  
set ignorecase  
set nohlsearch  
set incsearch  
set listchars=tab:\|\ ,trail:.,extends:>,precedes:<,eol:$  
set novisualbell  
set laststatus=2  
set formatoptions=tcrqn  
set autoindent  
set smartindent  
set cindent  
set tabstop=4  
set softtabstop=4 
set shiftwidth=4  
set noexpandtab  
set nowrap  
set smarttab  
set number
set list
map <F5> :call CompileRunGcc()<CR> 
func! CompileRunGcc() 
exec “w” 
exec “!gcc % -o %<” 
exec “! ./%<” 
endfunc  
map <F6> :call CompileRunGpp()<CR> 
func! CompileRunGpp() 
exec “w” 
exec “!g++ % -o %<” 
exec “! ./%<” 
endfunc  
set encoding=utf-8 
function! SetFileEncodings(encodings) 
let b:myfileencodingsbak=&fileencodings 
let &fileencodings=a:encodings 
endfunction 
function! RestoreFileEncodings() 
let &fileencodings=b:myfileencodingsbak 
unlet b:myfileencodingsbak 
endfunction  
au BufReadPre *.nfo call SetFileEncodings(‘cp437’)|set ambiwidth=single au BufReadPost *.nfo call RestoreFileEncodings()  
au BufRead,BufNewFile * setfiletype txt  
nmap<leader>sa :csadd cscope.out<cr>
nmap<leader>ss :cs find s<C-R>=expand(“<cword>”)<cr><cr>
nmap<leader>sg :cs find g <C-R>=expand(“<cword>”)<cr><cr>
nmap<leader>sc :cs find c <C-R>=expand(“<cword>”)<cr><cr>
nmap<leader>st :cs find t <C-R>=expand(“<cword>”)<cr><cr>
nmap<leader>se :cs find e <C-R>=expand(“<cword>”)<cr><cr>
nmap<leader>sf :cs find f<C-R>=expand(“<cfile>”)<cr><cr>
nmap<leader>si :cs find i<C-R>=expand(“<cfile>”)<cr><cr>
nmap<leader>sd :cs find d <C-R>=expand(“<cword>”)<cr><cr>
let g:miniBufExplMapWindowNavVim = 1
let g:miniBufExplMapWindowNavArrows = 1
let g:miniBufExplMapCTabSwitchBufs = 1
let g:miniBufExplModSelTarget = 1 
nnoremap<F4>  /<C-R>=expand(“<cword>”)<cr><cr>
nnoremap<F3>  ?<C-R>=expand(“<cword>”)<cr><cr>
nnoremap <silent> <leader><F3> :Grep<CR> 
nnoremap <silent> <leader><F4> :Rgrep<CR> 
se nu
