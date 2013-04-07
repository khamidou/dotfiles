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

" Edit the README_FOR_APP (makes :R commands work)
"map <Leader>R :e doc/README_FOR_APP<CR>
" Press ^F from insert mode to insert the current file name
imap <C-F> <C-R>=expand("%")<CR>

" Color scheme
colorscheme desert
"set background=light
"let g:solarized_termcolors=256
"colorscheme solarized
" colorscheme vividchalk
" highlight NonText guibg=#060606
" highlight Folded  guibg=#0A0A0A guifg=#9090D0

" Snippets are activated by Shift+Tab
let g:snippetsEmu_key = "<S-Tab>"

" Tab completion options
" (only complete to the longest unambiguous match, and show a menu)
" set completeopt=longest,menu
" set wildmode=list:longest,list:full
" set complete=.,t

set smartindent 
set wrap "Wrap lines
set smarttab
set autochdir
set switchbuf=usetab,newtab
set modeline

" Abbrevs
cnoreabbrev te tabedit
