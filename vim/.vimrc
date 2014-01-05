" Load bundles from .vimrc.bundles
source ~/.vimrc.bundles

" ======================================
" Vim settings
" ======================================

" Leader key
let mapleader = "`"

set autoindent                    " Copy indent from current line when starting a new line.
set backspace=indent,eol,start    " Allow backspacing over everything in insert mode.
set colorcolumn=80,125            " Highlight columns
set copyindent                    " Copy the previous indentation on autoindenting
set cursorline                    " Highlight current line
set encoding=utf-8                " Character encoding used inside Vim.
set clipboard=unnamed             " Share system clipboard.
set hidden                        " Hide buffers when abandoning.
set history=50                    " Remember more commands and search history.
set hlsearch                      " Highlight search terms.
set ignorecase                    " Ignore case when searching.
set incsearch                     " Do incremental searching.
set laststatus=2                  " Always display the status line.
set nobackup                      " No backup file.
set nocompatible                  " Use Vim settings, rather than Vi settings.
set noerrorbells                  " Don't beep.
set nowrap                        " Don't wrap lines.
set nowritebackup
set noswapfile
set number                        " Show line numbers.
set pastetoggle=<F2>              " Avoid cascading indents when pasting large amounts of text
set ruler                         " Show the cursor position all the time
set showmatch
set showcmd                       " Display incomplete commands
set smartcase                     " Ignore case if search pattern is all lowercase, case-sensitive otherwise
set splitbelow                    " Open new split panes to right and bottom.
set splitright
set tags=./tags;                  " Set the tag file search order
set timeoutlen=1000 ttimeoutlen=0
set title                         " Change the terminal's title
set undolevels=1000               " Use many levels of undo
set visualbell                    " Don't beep

" Softtabs. 2 spaces
set expandtab
set shiftround      " Use multiple of shiftwidth when indenting with '<' and '>'
set shiftwidth=2
set smarttab        " Insert tabs on the start of a line according to shiftwidth, not tabstop
set softtabstop=2
set tabstop=2

" Colorscheme
syntax enable
set background=dark
let g:hybrid_use_iTerm_colors = 1
colorscheme hybrid

let &colorcolumn="80,".join(range(125,999),",")

" Use The Silver Searcher
" https://github.com/ggreer/the_silver_searcher
if executable('ag')
  " Use Ag over Grep
  set grepprg=ag\ --nogroup\ --nocolor
endif

" Index ctags from any project, including those outside Rails
map <Leader>ct :!ctags -R .<CR>

" Easier split navigation.
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" Save file with <C-s>
nmap <C-s> <Esc>:w<CR>
vmap <C-s> <Esc><C-s>gv
imap <C-s> <Esc><C-s>

" ======================================
" Plugin customisation
" ======================================

" Matchit
" ======================================
runtime macros/matchit.vim

" CtrlP
" ======================================
let g:ctrlp_map = '<C-t>'
let g:ctrlp_extensions = ['tag', 'buffertag', 'quickfix', 'mixed']
let g:ctrlp_match_window = 'top,order:ttb'
let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'
set wildignore+=*/tmp/*,*.so,*.swp,*.zip
map <Leader>r :CtrlPBufTag<CR>

" DeleteTrailingWhiteSpace
" ShowTrailingWhiteSpace
" ======================================
" * Highlight and Delete trailing whitespace on save.
let g:DeleteTrailingWhitespace_Action = 'delete'
highlight ShowTrailingWhitespace ctermbg=Red guibg=Red

" NERDTree
" ======================================
map <Leader>nt :NERDTreeToggle<CR>

" Tabularize
" ======================================
nmap <Leader>a= :Tabularize /=<CR>
vmap <Leader>a= :Tabularize /=<CR>
nmap <Leader>a: :Tabularize /:\zs<CR>
vmap <Leader>a: :Tabularize /:\zs<CR>

" delimitMate
" ======================================
let delimitMate_expand_cr = 1

" vim-rspec
" =====================================
map <Leader>t :call RunCurrentSpecFile()<CR>
map <Leader>s :call RunNearestSpec()<CR>
map <Leader>l :call RunLastSpec()<CR>
map <Leader>as :call RunAllSpecs()<CR>
