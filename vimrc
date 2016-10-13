"unlet! skip_defaults_vim
source $VIMRUNTIME/defaults.vim

" ======================================
" vim-plug
" ======================================

call plug#begin('~/.vim/plugged')

Plug 'benekastah/neomake'
Plug 'christoomey/vim-tmux-navigator'
Plug 'coderifous/textobj-word-column.vim'
Plug 'janko-m/vim-test'
Plug 'kana/vim-textobj-user'
Plug 'justinmk/vim-dirvish'
Plug 'ludovicchabant/vim-gutentags'
Plug 'mustache/vim-mustache-handlebars'
Plug 'mattn/emmet-vim'
Plug 'nelstrom/vim-textobj-rubyblock'
Plug 'sheerun/vim-polyglot'
Plug 'tommcdo/vim-lion'
Plug 'tpope/vim-bundler'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-dispatch'
Plug 'tpope/vim-endwise'
Plug 'tpope/vim-eunuch'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-rails'
Plug 'tpope/vim-rake'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-unimpaired'
Plug 'SirVer/ultisnips'
Plug 'vim-airline/vim-airline'
Plug '/usr/local/opt/fzf'
Plug 'junegunn/fzf.vim'

call plug#end()

" ======================================
" settings
" ======================================

let mapleader = " "

set autowrite
set clipboard=unnamed
set diffopt+=vertical
set complete=.,w,b,u,t,i
set hidden
set laststatus=2

" Tabs
set tabstop=2
set shiftwidth=2
set shiftround
set expandtab

" Highlight where 80 and 100 characters are
set textwidth=80
set colorcolumn=+1,+21
set cursorline
set nobackup
set nowritebackup
set noswapfile
set ignorecase
set undolevels=1000
set number
set relativenumber

" Display extra whitespace
set list listchars=tab:»»,trail:·,nbsp:·,extends:›,precedes:‹

" ======================================
" colors
" ======================================
set t_ut=
set termguicolors

set background=dark
colorscheme kaiterial

" Persistent undo
let undodir = expand('~/.undo-vim')
if !isdirectory(undodir)
  call mkdir(undodir)
endif
set undodir=~/.undo-vim
" Create FILE.un~ files for persistent undo
set undofile

" ======================================
" keybindings
" ======================================

" Switch between the last two files
nnoremap <leader><leader> <c-^>

" Grep word under cursor
nnoremap K :grep! "\b<C-R><C-W>\b"<CR>:cw<CR>

" Quicker window movement
nnoremap <c-j> <c-w>j
nnoremap <c-k> <c-w>k
nnoremap <c-h> <c-w>h
nnoremap <c-l> <c-w>l

" Save file with <C-s>
nmap <c-s> <Esc>:w<CR>
vmap <c-s> <Esc><c-s>gv
imap <c-s> <Esc><c-s>

" hide and delete buffer
nnoremap <c-x><c-u> :bunload<cr>
nnoremap <c-x><c-d> :bdelete<cr>

" zoom a vim pane, <C-w>= to re-balance
nnoremap <leader>- :wincmd _<cr>:wincmd \|<cr>
nnoremap <leader>= :wincmd =<cr>

" automatically rebalance windows on vim resize
autocmd VimResized * :wincmd =

" Strip trailing whitespace
function! Preserve(command)
  " Preparation: save last search, and cursor position.
  let _s=@/
  let l = line(".")
  let c = col(".")
  " Do the business:
  execute a:command
  " Clean up: restore previous search history, and cursor position
  let @/=_s
  call cursor(l, c)
endfunction

nmap _$ :call Preserve("%s/\\s\\+$//e")<CR>
autocmd BufWritePre * :call Preserve("%s/\\s\\+$//e")

" ======================================
" plugins
" ======================================
" airline
let g:airline_powerline_fonts = 1

" emmet
imap <C-e> <plug>(emmet-expand-abbr)

" neomake
" Run on read and write operations
autocmd! BufReadPost,BufWritePost * Neomake
let g:neomake_serialize = 1
let g:neomake_serialize_abort_on_error = 1

" fzf.vim
set rtp+=/usr/local/opt/fzf
nnoremap <c-p> :FZF<cr>
imap <c-x><c-l> <plug>(fzf-complete-line)
imap <c-x><c-f> <plug>(fzf-complete-path)

nnoremap <silent> <leader>B :Buffers<CR>
nnoremap <silent> <leader>W :Windows<CR>
nnoremap <silent> <leader>; :BLines<CR>
nnoremap <silent> <leader>[ :BTags<CR>
nnoremap <silent> <leader>] :Tags<CR>
nnoremap <silent> <leader>? :History<CR>
nnoremap <silent> <leader>/ :execute 'Ag ' . input('Ag/')<CR>

" vim-commentary
" toggle comment
nmap cm <Plug>Commentary
let g:deoplete#enable_at_startup = 1

map <leader>H :echo "hi<" . synIDattr(synID(line("."),col("."),1),"name") . '> trans<' . synIDattr(synID(line("."),col("."),0),"name") . "> lo<" . synIDattr(synIDtrans(synID(line("."),col("."),1)),"name") . ">" . " FG:" . synIDattr(synIDtrans(synID(line("."),col("."),1)),"fg#")<CR>

