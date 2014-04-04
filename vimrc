set nocompatible
filetype off

" ======================================
" Vundle
" ======================================
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" Let Vundle manage Vundle
Plugin 'gmarik/vundle'

" Define bundles via Github repos
Plugin 'bling/vim-airline'
Plugin 'groenewege/vim-less'
Plugin 'honza/vim-snippets'
Plugin 'kien/ctrlp.vim'
Plugin 'kchmck/vim-coffee-script'
Plugin 'kana/vim-textobj-user'
Plugin 'mattn/emmet-vim'
Plugin 'nelstrom/vim-textobj-rubyblock'
Plugin 'othree/html5.vim'
Plugin 'rking/ag.vim'
Plugin 'SirVer/ultisnips'
Plugin 'slim-template/vim-slim'
Plugin 'scrooloose/syntastic'
Plugin 'thoughtbot/vim-rspec'
Plugin 'tomtom/tlib_vim'
Plugin 'tpope/vim-bundler'
Plugin 'tpope/vim-commentary'
Plugin 'tpope/vim-endwise'
Plugin 'tpope/vim-eunuch'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-rails'
Plugin 'tpope/vim-rbenv'
Plugin 'tpope/vim-rake'
Plugin 'tpope/vim-surround'
Plugin 'Valloric/YouCompleteMe'
Plugin 'vim-ruby/vim-ruby'
Plugin 'vim-scripts/BufOnly.vim'
Plugin 'vim-scripts/DeleteTrailingWhitespace'
Plugin 'vim-scripts/ShowTrailingWhitespace'
Plugin 'w0ng/vim-hybrid'

filetype plugin indent on

" ======================================
" Vim settings
" ======================================

" Leader key
let mapleader = " "

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
set nohls
set noerrorbells                  " Don't beep.
set nowrap                        " Don't wrap lines.
set nowritebackup
set noswapfile
set number                        " Show line numbers.
set omnifunc=syntaxcomplete#Complete
set pastetoggle=<F2>              " Avoid cascading indents when pasting large amounts of text
set relativenumber
set ruler
set shell=/usr/local/bin/zsh
set showmatch
set showcmd                       " Display incomplete commands
set smartcase                     " Ignore case if search pattern is all lowercase, case-sensitive otherwise
set splitbelow                    " Open new split panes to right and bottom.
set splitright
set tags=./tags;                  " Set the tag file search order
set timeoutlen=1000 ttimeoutlen=0
set title
set undolevels=1000
set visualbell

" Folding
set fillchars="fold:"
set foldenable
set foldmethod=syntax
set foldlevel=100
set foldtext=MyFoldText()
function MyFoldText()
  let line = getline(v:foldstart)
  let sub = substitute(line, '/\*\|\*/\|{{{\d\=', '', 'g')
  let lines = v:foldend - v:foldstart
  let linestxt = ' - [' . lines . ' lines]'

  return sub . linestxt
endfunction

" Tabs
" * Use 2 spaces
set expandtab
set shiftround
set shiftwidth=2
set smarttab
set softtabstop=2
set tabstop=2

" Colorscheme
syntax enable
set background=dark
let g:hybrid_use_iTerm_colors = 1
colorscheme hybrid

" Toggle between light and dark color schemes
nnoremap <F4> :call ToggleColors()<CR>

function! ToggleColors()
  if g:colors_name == 'hybrid'
    colorscheme hybrid-light
  else
    colorscheme hybrid
  endif
endfunction

let &colorcolumn="80,".join(range(125,999),",")

" Index ctags
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

" Bind :Q to :q
command! Q q
command! Qall qall

" ======================================
" Plugins
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
let g:ctrlp_use_caching = 0
set wildignore+=*/tmp/*,*.so,*.swp,*.zip
map <Leader>r :CtrlPBufTag<CR>

" DeleteTrailingWhiteSpace
" ShowTrailingWhiteSpace
" ======================================
" * Highlight and Delete trailing whitespace on save.
let g:DeleteTrailingWhitespace_Action = 'delete'
highlight ShowTrailingWhitespace ctermbg=Red guibg=Red

" vim-rspec
" =====================================
map <Leader>t :call RunCurrentSpecFile()<CR>
map <Leader>s :call RunNearestSpec()<CR>
map <Leader>l :call RunLastSpec()<CR>
map <Leader>as :call RunAllSpecs()<CR>

" vim-rails
" =====================================
" * Go to Alternate file
nmap ga :A<CR>
vmap ga :A<CR>
nmap gsa :AS<CR>
vmap gsa :AS<CR>
nmap gva :AV<CR>
vmap gva :AV<CR>

" * Go to Related file
nmap gr :R<CR>
vmap gr :R<CR>
nmap gsr :RS<CR>
vmap gsr :RS<CR>
nmap gvr :RV<CR>
vmap gvr :RV<CR>

" vim-commentary
" =====================================
nmap cm <Plug>Commentary

" emmet-vim
" =====================================
let g:user_emmet_leader_key = "<c-e>"

" Fugitive
" =====================================
" * Open :Gstatus window on right
autocmd FileType gitcommit wincmd L

" The Silver Searcher
" =====================================
" Use The Silver Searcher
" https://github.com/ggreer/the_silver_searcher
if executable('ag')
  " Use Ag over Grep
  set grepprg=ag\ --nogroup\ --nocolor
endif

" * Bind K to grep word under cursor
nnoremap K :grep! "\b<C-R><C-W>\b"<CR>:cw<CR>

" UltiSnips
" =====================================
let g:UltiSnipsExpandTrigger="`"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"
