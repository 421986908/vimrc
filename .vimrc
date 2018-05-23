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
Plugin 'scrooloose/nerdtree'
Plugin 'lyuts/vim-rtags'


" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required


"set background=dark
"let g:solarized_termcolors=256
"colorscheme solarized

let mapleader=","

"-------------------------------tagbar------------------------------------"

autocmd vimenter * Tagbar
let g:tagbar_width = 20


"------------------------------cscope---------------------------------------"
if has("cscope")

    """"""""""""" Standard cscope/vim boilerplate

    " use both cscope and ctag for 'ctrl-]', ':ta', and 'vim -t'
    set cscopetag

    " check cscope for definition of a symbol before checking ctags: set to 1
    " if you want the reverse search order.
    set csto=0

    " add any cscope database in current directory
    if filereadable("cscope.out")
        cs add cscope.out  
    " else add the database pointed to by environment variable 
    elseif $CSCOPE_DB != ""
        cs add $CSCOPE_DB
    endif

    " show msg when any other cscope db added
    set cscopeverbose  

	nmap <leader>ss :cs find s <C-R>=expand("<cword>")<CR><CR>
	nmap <leader>sg :cs find g <C-R>=expand("<cword>")<CR><CR>
	nmap <leader>sc :cs find c <C-R>=expand("<cword>")<CR><CR>
	nmap <leader>st :cs find t <C-R>=expand("<cword>")<CR><CR>
	nmap <leader>se :cs find e <C-R>=expand("<cword>")<CR><CR>
	nmap <leader>sf :cs find f <C-R>=expand("<cfile>")<CR><CR>
	nmap <leader>si :cs find i ^<C-R>=expand("<cfile>")<CR>$<CR>
	nmap <leader>sd :cs find d <C-R>=expand("<cword>")<CR><CR>
endif

"--------------------------YouCompleteMe----------------------------------"
nmap <leader>gc :YcmCompleter GoToDeclaration<CR>
"nmap <leader>gf :YcmCompleter GoToDefinition<CR>
nmap <leader>gd :YcmCompleter GoToDefinitionElseDeclaration<CR>

nmap <leader>gf <leader>rn<C-R>=expand("<cword>")<CR><CR>
