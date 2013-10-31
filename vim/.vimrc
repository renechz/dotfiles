" Load bundles from .vimrc.bundles
source ~/.vimrc.bundles


" ======================================
" Vim settings
" ======================================

" Leader key
let mapleader = "`"

set autoindent
set backspace=indent,eol,start  " Allow backspacing over everything in insert mode
set colorcolumn=80,100
set copyindent                  " Copy the previous indentation on autoindenting
set cursorline
set encoding=utf-8
set clipboard=unnamed           " Share clipboard.
set hidden
set history=1000                " Remember more commands and search history
set hlsearch                    " Highlight search terms
set ignorecase                  " Ignore case when searching
set incsearch                   " Do incremental searching
set laststatus=2                " Always display the status line
set nobackup                    " No backup file
set nocompatible                " Use Vim settings, rather than Vi settings
set noerrorbells                " Don't beep
set nowrap                      " Don't wrap lines
set nowritebackup
set noswapfile
set number
set numberwidth=5
set pastetoggle=<F2>            " Avoid cascading indents when pasting large amounts of text
set ruler                       " Show the cursor position all the time
set shell=/usr/local/bin/zsh
set showmatch
set showcmd                     " Display incomplete commands
set smartcase                   " Ignore case if search pattern is all lowercase, case-sensitive otherwise
set splitbelow                  " Open new split panes to right and bottom.
set splitright
set tags=./tags;                " Set the tag file search order
set timeoutlen=1000 ttimeoutlen=0
set title                       " Change the terminal's title
set undolevels=1000             " Use many levels of undo
set visualbell                  " Don't beep

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
colorscheme solarized

" Use The Silver Searcher
" https://github.com/ggreer/the_silver_searcher
if executable('ag')
  " Use Ag over Grep
  set grepprg=ag\ --nogroup\ --nocolor
endif

" Exclude Javascript files in :Rtags via rails.vim due to warnings when
" parsing
let g:Tlist_Ctags_Cmd="ctags --exclude='*.js'"

" Index ctags from any project, including those outside Rails
map <Leader>ct :!ctags -R .<CR>

" Save file with <C-s>
nmap <C-s> <Esc>:w<CR>
vmap <C-s> <Esc><C-s>gv
imap <C-s> <Esc><C-s>


" Easier split navigation.
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" ======================================
" Plugin customisation
" ======================================

" CtrlP
" ======================================
let g:ctrlp_map = '<C-t>'
let g:ctrlp_match_window = 'top,order:ttb'
let g:ctrlp_extensions = ['tag', 'buffertag', 'quickfix', 'mixed']
let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'
set wildignore+=*/tmp/*,*.so,*.swp,*.zip
map <Leader>r :CtrlPBufTag<CR>

" DeleteTrailingWhiteSpace
" ShowTrailingWhiteSpace
" ======================================
"
" * Highlight and Delete trailing whitespace on save.
let g:DeleteTrailingWhitespace_Action = 'delete'
highlight ShowTrailingWhitespace ctermbg=Red guibg=Red

" NERDTree
" ======================================
map <Leader>nt :NERDTreeToggle<CR>

" Emmet
" ======================================
let g:user_emmet_settings = { 'indentation': '2' }
autocmd FileType html,css,sass,scss,eruby EmmetInstall
autocmd FileType html,css,sass,scss,eruby imap <Leader><tab> <plug>(EmmetExpandAbbr)

" Tabularize
" ======================================
nmap <Leader>a= :Tabularize /=<CR>
vmap <Leader>a= :Tabularize /=<CR>
nmap <Leader>a: :Tabularize /:\zs<CR>
vmap <Leader>a: :Tabularize /:\zs<CR>

" delimitMate
" ======================================
let delimitMate_expand_cr = 1
