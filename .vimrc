set nocompatible
filetype off

execute pathogen#infect()
syntax on
filetype plugin indent on

syntax enable           " enable syntax processing
let mapleader=","       " leader is comma

set number              " show line numbers
set showcmd             " show command in bottom bar
set cursorline          " highlight current line
set wildmenu            " visual autocomplete for command menu
set lazyredraw          " redraw only when we need to.
set showmatch           " highlight matching [{()}]
set incsearch           " search as characters are entered
set hlsearch            " highlight matches
nnoremap <leader><space> :nohlsearch<CR>

let g:solarized_termcolors=256
syntax enable
set background=light
colorscheme solarized

set tabstop=8 softtabstop=0 expandtab shiftwidth=4 smarttab

" js beautify
autocmd FileType javascript noremap <buffer>  <c-f> :call JsBeautify()<cr>
autocmd FileType json noremap <buffer> <c-f> :call JsonBeautify()<cr>
autocmd FileType html noremap <buffer> <c-f> :call HtmlBeautify()<cr>
autocmd FileType css noremap <buffer> <c-f> :call CSSBeautify()<cr>
