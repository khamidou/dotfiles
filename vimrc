" based on http://github.com/jferris/config_files/blob/master/vimrc

" Use Vim settings, rather then Vi settings (much better!).
" This must be first, because it changes other options as a side effect.
set nocompatible
filetype off                  " required

call plug#begin('~/.vim/plugged')

Plug 'tpope/vim-fugitive', {'commit': 'a9100f'}
Plug 'garbas/vim-snipmate', {'commit': 'a9802f2'}
Plug 'danro/rename.vim', {'commit': 'f133763'}
Plug 'ctrlpvim/ctrlp.vim', {'commit': 'ebc568c'}
Plug 'vim-scripts/YankRing.vim', {'commit': '28854ab'}
Plug 'vim-scripts/L9', {'commit': 'c822b05'}
Plug 'vim-scripts/FuzzyFinder', {'commit': 'b9f1659'}
Plug 'fatih/vim-go', {'commit': 'f3ebf20', 'do': ':GoUpdateBinaries'}

" Syntax plugins
"Plug 'scrooloose/syntastic', {'commit': '0295d824'}
Plug 'pangloss/vim-javascript', {'commit': 'dd84369'}
Plug 'evanleck/vim-svelte', {'commit': '75f6f53'}

call plug#end()            " required

syntax on

set nobackup
set nowritebackup
set history=50		" keep 50 lines of command line history
set ruler		" show the cursor position all the time
set incsearch		" do incremental searching
set hlsearch
set nofoldenable " never liked folding
"set re=0 " turn on new regex engine because typescript render is sloooow https://jameschambers.co.uk/vim-typescript-slow

let mapleader = "\<Space>"
" idiotic vim has this distinction between leader and localleader
let localleader = ","

let g:ctrlp_map = '<c-o>'
let g:ctrlp_max_files = 15000
let g:ctrlp_match_window = 'results:40'

" shortcuts for fuzzyfilefinder
set wildcharm=<C-z>
map <Leader>b :FufBuffer<CR>
map <Leader>f :FufFile<CR>
map <Leader>w :w<CR>
map <Leader>d :bd<CR>
map <Leader>r :FufRenewCache<CR>
" jump to/from tag
map <Leader>v 
map <Leader>c 
map <Leader>g 1
map <Leader>g 1
map <Leader>p :set paste! paste?<CR>
map <Leader>t :CtrlPTag<CR>

" Press ^F from insert mode to insert the current file name
imap <C-F> <C-R>=expand("%")<CR>

" Color scheme it's a custom one copied from desert
colorscheme cscheme

" By default, the pop-up menu seems to be white on pink
highlight Pmenu ctermbg=black
highlight Pmenu guibg=black

filetype plugin on
" Snippets are activated by Shift+Tab
let g:snippetsEmu_key = "<Leader>s"

let g:fuf_maxMenuWidth = 100
" Don't require me to type '/' to match subpaths
let g:fuf_splitPathMatching = 0

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

" Display JSON files as Javascript
autocmd BufNewFile,BufRead *.json set ft=javascript
autocmd BufNewFile,BufRead *.es6 set ft=javascript
autocmd Filetype javascript setlocal ts=2 sts=2 sw=2

" Use hcl syntax for terraform
autocmd BufNewFile,BufRead *.tf set ft=hcl

" file finding options
set wildmenu
set wildmode=longest:full,full
set wildignore+=*.o,*.out,*.obj,*.rbc,*.rbo,*.class,*.gem,*.pyc,*.log
set wildignore+=*.zip,*.tar.gz,*.tar.bz2,*.rar,*.tar.xz
set wildignore+=*.swp,*.bak,*~,._*
set wildignore+=*/node_modules/*
set wildignore+=*/bower_components/*
set wildignore+=*/.venv/*
set wildignore+=*/venv/*
set wildignore+=*/dist/*
set wildignore+=*/vendor/gems/*,*/vendor/cache/*,*/.bundle/*,*/.sass-cache/*

set tags=./tags;$HOME " look for ctags recursively

"set colorcolumn=+1
"hi ColorColumn guibg=#2e2e2e ctermbg=237

" Abbrevs
cnoreabbrev te tabedit

" I keep typing it wrong
cabbrev aq qa

if executable('ack')
  " Use ack over grep
  set grepprg=ack\ --nogroup\ --nocolor
endif

" Syntastic
"let g:syntastic_enable_signs=1
"let g:syntastic_auto_jump=0
"let g:syntastic_stl_format = '[%E{Err: %fe #%e}%B{, }%W{Warn: %fw #%w}]'
"let g:syntastic_javascript_checkers = ['eslint', 'jshint']
"let g:syntastic_javascript_eslint_exec = 'eslint_d'
"let g:syntastic_coffee_checkers = ['coffeelint', 'coffee']
"let g:jsx_ext_required = 0 " Allow JSX in normal JS files
"let g:syntastic_python_checkers = ['python', 'flake8']

"let g:syntastic_always_populate_loc_list = 1
"let g:syntastic_auto_loc_list = 0
"let g:syntastic_check_on_open = 1
"let g:syntastic_check_on_wq = 0
"
set statusline+=%#warningmsg#
"set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

highlight SyntasticWarningSign ctermfg=white ctermbg=red


" Golang

" Display .go files as Golang
autocmd BufNewFile,BufRead *.go set ft=go

" format the current buffer with goimports
command GoImports %! goimports
