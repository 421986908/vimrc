set mouse=a
set tags=tags;
set autochdir
set backspace=2
set hlsearch
set smartindent
set cindent
set tabstop=4
set shiftwidth=4
set autoindent
set showmatch

"inoremap ( ()<ESC>i
"inoremap [ []<ESC>i
"inoremap { {}<ESC>i
"inoremap < <><ESC>i

syntax enable
"set background=light
let g:solarized_termcolors=256
colorscheme solarized

set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'altercation/vim-colors-solarized'
Plugin 'majutsushi/tagbar'
Plugin 'Valloric/YouCompleteMe'
"Plugin 'scrooloose/nerdtree'


" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required


"-------------------------------tagbar------------------------------------"

autocmd vimenter * Tagbar
let g:tagbar_width = 20


"------------------------------cscope---------------------------------------"
if has("cscope")
	set csprg=/usr/bin/cscope
	set csto=0
	set cst
	set nocsverb
	" add any database in current directory
	if filereadable("cscope.out")
		cs add cscope.out
		" else add database pointed to by environment
	elseif $CSCOPE_DB != ""
		cs add $CSCOPE_DB
	endif
	set csverb
endif

nmap <C-Space>s :cs find s <C-R>=expand("<cword>")<CR><CR>
nmap <C-]>:cs find g <C-R>=expand("<cword>")<CR><CR>
nmap <C-Space>c :cs find c <C-R>=expand("<cword>")<CR><CR>
nmap <C-Space>t :cs find t <C-R>=expand("<cword>")<CR><CR>
nmap <C-Space>e :cs find e <C-R>=expand("<cword>")<CR><CR>
nmap <C-Space>f :cs find f <C-R>=expand("<cfile>")<CR><CR>
nmap <C-Space>i :cs find i <C-R>=expand("<cfile>")<CR><CR>
nmap <C-Space>d :cs find d <C-R>=expand("<cword>")<CR><CR>
