" based on http://github.com/jferris/config_files/blob/master/vimrc

" Use Vim settings, rather then Vi settings (much better!).
" This must be first, because it changes other options as a side effect.
set nocompatible
syntax on

set nobackup
set nowritebackup
set history=50		" keep 50 lines of command line history
set ruler		" show the cursor position all the time
set incsearch		" do incremental searching
set hlsearch
set nofoldenable " never liked folding

let mapleader = "\<Space>"
" idiotic vim has this distinction between leader and localleader
let localleader = ","

" shortcuts for fuzzyfilefinder
map <Leader>b :FufBuffer<CR>
map <Leader>f :FufFile<CR>
map <Leader>w :w<CR>
map <Leader>d :bd<CR>
" jump to/from tag
map <Leader>v 
map <Leader>c 

" Press ^F from insert mode to insert the current file name
imap <C-F> <C-R>=expand("%")<CR>

" Color scheme it's a custom one copied from desert
colorscheme cscheme

" By default, the pop-up menu seems to be white on pink
highlight Pmenu ctermbg=black
highlight Pmenu guibg=black

"set background=light
"let g:solarized_termcolors=256
"colorscheme solarized
" colorscheme vividchalk

filetype plugin on
" Snippets are activated by Shift+Tab
let g:snippetsEmu_key = "<Leader>s"

" Tab completion options
" (only complete to the longest unambiguous match, and show a menu)
" set completeopt=longest,menu
" set wildmode=list:longest,list:full
" set complete=.,t

set hidden " work like emacs for buffers

"set wrap "Wrap lines
"set textwidth=80
"set formatoptions+=t

set smarttab
set autochdir
set switchbuf=usetab,newtab
set modeline

" always use four spaces 
set tabstop=4
set shiftwidth=4
set expandtab
autocmd Filetype ruby setlocal ts=2 sts=2 sw=2

" file finding options
set wildmenu
set wildmode=longest:full,full

set tags=./tags;/ " look for ctags recursively

"set colorcolumn=+1 
"hi ColorColumn guibg=#2e2e2e ctermbg=237

" Abbrevs
cnoreabbrev te tabedit
