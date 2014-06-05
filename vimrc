set nocompatible
filetype off

" ======================================
" Vundle
" ======================================
set rtp+=~/.vim/bundle/Vundle.vim/
call vundle#begin()

" Let Vundle manage Vundle
Plugin 'gmarik/Vundle.vim'

" Define bundles via Github repos

" Vim
Plugin 'bling/vim-airline'
Plugin 'kien/ctrlp.vim'
Plugin 'rking/ag.vim'
Plugin 'SirVer/ultisnips'
Plugin 'honza/vim-snippets'
Plugin 'tpope/vim-commentary'
Plugin 'tpope/vim-endwise'
Plugin 'tpope/vim-eunuch'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-unimpaired'
Plugin 'Valloric/YouCompleteMe'
Plugin 'vim-scripts/DeleteTrailingWhitespace'
Plugin 'vim-scripts/ShowTrailingWhitespace'
Plugin 'scrooloose/syntastic'
Plugin 'w0ng/vim-hybrid'

" Ruby / Rails
Plugin 'kchmck/vim-coffee-script'
Plugin 'nelstrom/vim-textobj-rubyblock'
Plugin 'kana/vim-textobj-user'
Plugin 'slim-template/vim-slim'
Plugin 'thoughtbot/vim-rspec'
Plugin 'tpope/vim-bundler'
Plugin 'tpope/vim-rails'
Plugin 'tpope/vim-rbenv'
Plugin 'tpope/vim-rake'
Plugin 'vim-ruby/vim-ruby'

" HTML / CSS
Plugin 'mattn/emmet-vim'
Plugin 'othree/html5.vim'

call vundle#end()
filetype plugin indent on

" ======================================
" Vim settings
" ======================================

" Leader key
let mapleader = " "

set autoindent
set autoread
set backspace=indent,eol,start
set copyindent
set cursorline
set encoding=utf-8
set clipboard=unnamed
set gdefault
set hidden
set history=50
set laststatus=2
set nobackup
set nocompatible
set nohls
set noerrorbells
set nowrap
set nowritebackup
set noswapfile
set number
set relativenumber
set shell=/usr/local/bin/zsh
set showmatch
set showcmd
set smartcase
set tags=./tags
set timeoutlen=1000 ttimeoutlen=0
set title
set undolevels=1000
set visualbell

" Splits
set splitbelow
set splitright

" Rulers
set ruler
set colorcolumn=80,100
let &colorcolumn="80,".join(range(100,999),",")

" Search
set hlsearch      " Highlight search terms.
set ignorecase    " Ignore case when searching.
set incsearch     " Do incremental searching.

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
let g:user_emmet_install_global = 0
autocmd FileType html,css,eruby,scss EmmetInstall
autocmd FileType html,css,eruby,scss imap <s-tab> <plug>(emmet-expand-abbr)

" vim-fugitive
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
let g:UltiSnipsJumpForwardTrigger = "<tab>"
let g:UltiSnipsJumpBackwardTrigger = "<s-tab>"
let g:UltiSnipsEditSplit = 'vertical'

" YouCompleteMe
" =====================================
let g:ycm_collect_identifiers_from_tags_files = '1'
let g:ycm_key_list_select_completion = ['<C-j>', '<Down>']
let g:ycm_key_list_previous_completion = ['<C-k>', '<Up>']
