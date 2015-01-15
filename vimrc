" ======================================
" vim-plug
" ======================================
call plug#begin('~/.vim/plugged')

" Vim
Plug 'bling/vim-airline'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'junegunn/vim-easy-align'
Plug 'pbrisbin/vim-mkdir'
Plug 'rking/ag.vim'
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
Plug 'ngmy/vim-rubocop'
Plug 'scrooloose/syntastic'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-dispatch'
Plug 'tpope/vim-endwise'
Plug 'tpope/vim-eunuch'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-unimpaired'
Plug 'vim-scripts/DeleteTrailingWhitespace'
Plug 'vim-scripts/ShowTrailingWhitespace'
Plug 'zenorocha/dracula-theme', { 'rtp': 'vim' }

" Ruby / Rails
Plug 'nelstrom/vim-textobj-rubyblock'
Plug 'kana/vim-textobj-user'
Plug 'thoughtbot/vim-rspec'
Plug 'tpope/vim-bundler'
Plug 'tpope/vim-rails'
Plug 'tpope/vim-rake'
Plug 'tpope/vim-rbenv'
Plug 'vim-ruby/vim-ruby'

" HTML / CSS
Plug 'mattn/emmet-vim'
Plug 'othree/html5.vim'

call plug#end()

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
set splitbelow  " Open vertical splits below of current buffer
set splitright  " Open horizontal splits right of current buffer

" Easier split navigation.
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" Rulers
set ruler
set colorcolumn=80,100  " Set ruler to 80 and 100 chars

" Search
set hlsearch    " Highlight search terms.
set ignorecase  " Ignore case when searching.
set incsearch   " Do incremental searching.

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
set background=dark
syntax enable
colorscheme Dracula

" Toggle between light and dark color schemes
nnoremap <F4> :call ToggleColors()<CR>

" Exclude Javascript files in :Rtags via rails.vim due to warnings when parsing
let g:Tlist_Ctags_Cmd="ctags --exclude='*.js'"
" Index ctags
map <Leader>ct :!ctags -R .<CR>

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
" Run specs using vim-dispatch
let g:rspec_command = "Dispatch rspec {spec}"

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
autocmd FileType html,css,eruby,scss imap <expr> <s-tab> emmet#expandAbbrIntelligent("\<tab>")

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

" vim-easy-align
" =====================================
" Start interactive EasyAlign in visual mode (e.g. vip<Enter>)
vmap <Enter> <Plug>(EasyAlign)
" Start interactive EasyAlign for a motion/text object (e.g. <Leader>aip)
nmap <Leader>a <Plug>(EasyAlign)

" syntastic
" =====================================
let g:syntastic_ruby_rubocop_exec = '/Users/rene/.rbenv/shims/rubocop'
let g:syntastic_ruby_checkers = ['rubocop']
