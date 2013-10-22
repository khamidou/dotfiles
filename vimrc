" based on http://github.com/jferris/config_files/blob/master/vimrc

" Use Vim settings, rather then Vi settings (much better!).
" This must be first, because it changes other options as a side effect.
set nocompatible

set nobackup
set nowritebackup
set history=50		" keep 50 lines of command line history
set ruler		" show the cursor position all the time
set incsearch		" do incremental searching

" \ is the leader character
let mapleader = ","

" shortcuts for fuzzyfilefinder 
map <Leader>b :FufBuffer<CR>
map <Leader>f :FufFile<CR>
map <Leader>w :w<CR>
map <Leader>d :bd<CR>
map <Leader>t 

" Press ^F from insert mode to insert the current file name
imap <C-F> <C-R>=expand("%")<CR>

" Color scheme
colorscheme desert

" By default, the pop-up menu seems to be white on pink
highlight Pmenu ctermbg=black
highlight Pmenu guibg=black

"set background=light
"let g:solarized_termcolors=256
"colorscheme solarized
" colorscheme vividchalk

filetype plugin on
" Snippets are activated by Shift+Tab
let g:snippetsEmu_key = "<S-Tab>"

" Tab completion options
" (only complete to the longest unambiguous match, and show a menu)
" set completeopt=longest,menu
" set wildmode=list:longest,list:full
" set complete=.,t

set hidden " work like emacs for buffers

set smartindent 
set wrap "Wrap lines
set smarttab
set autochdir
set switchbuf=usetab,newtab
set modeline

" always use four spaces 
set tabstop=4
set shiftwidth=4
set expandtab

" file finding options
set wildmenu
set wildmode=longest:full,full


" Abbrevs
cnoreabbrev te tabedit
