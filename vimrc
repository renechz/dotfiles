unlet! skip_defaults_vim
source $VIMRUNTIME/defaults.vim

call plug#begin('~/.vim/plugged')

Plug 'christoomey/vim-tmux-navigator'
Plug 'coderifous/textobj-word-column.vim'
Plug 'honza/vim-snippets'
Plug 'janko-m/vim-test'
Plug 'kana/vim-textobj-user'
Plug 'justinmk/vim-dirvish'
Plug 'ludovicchabant/vim-gutentags'
Plug 'mattn/emmet-vim'
Plug 'nelstrom/vim-textobj-rubyblock'
Plug 'sheerun/vim-polyglot'
Plug 'tek/vim-textobj-ruby'
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
Plug 'w0rp/ale'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'junegunn/vim-emoji'
" Plug 'othree/yajs.vim', { 'branch': 'master' }
Plug 'ryanoasis/vim-devicons'
Plug 'trevordmiller/nova-vim'

call plug#end()

" ======================================
" settings
" ======================================

let mapleader = " "

" enable italics
let &t_ZH="\e[3m"
let &t_ZR="\e[23m"
set t_ut=

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

set nobackup
set nowritebackup
set noswapfile
set ignorecase
set undolevels=1000
set number
set relativenumber

" Display extra whitespace
set list listchars=tab:››,trail:·,nbsp:·,extends:›,precedes:‹

set termguicolors
set background=dark
colorscheme nova

" Persistent undo
let undodir = expand('~/.undo-vim')
if !isdirectory(undodir)
  call mkdir(undodir)
endif
set undodir=~/.undo-vim
" Create FILE.un~ files for persistent undo
set undofile

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

autocmd BufWritePre * :call Preserve("%s/\\s\\+$//e")

" ======================================
" plugins
" ======================================
if executable('rg')
  set grepprg=rg\ --vimgrep
  set grepformat=%f:%l:%c:%m
endif

" vim-test
let test#strategy = "dispatch"

nmap <silent> <leader>tn :TestNearest<CR>
nmap <silent> <leader>tf :TestFile<CR>
nmap <silent> <leader>ta :TestSuite<CR>
nmap <silent> <leader>tl :TestLast<CR>
nmap <silent> <leader>tv :TestVisit<CR>

" airline
let g:airline_powerline_fonts = 1
let g:airline_mode_map = { 'n': 'N', 'i' : 'I', 'R': 'R', 'v': 'V', 'V': 'V'}
let g:airline_left_sep = ''
let g:airline_right_sep = ''
let g:airline_left_alt_sep = '|'
let g:airline_right_alt_sep = '|'

" emmet
imap <C-e> <plug>(emmet-expand-abbr)

" ALE
let g:ale_sign_column_always = 1
let g:ale_javascript_eslint_use_global = 1
if emoji#available()
  let g:ale_sign_error = emoji#for('no_entry_sign')
  let g:ale_sign_warning = emoji#for('warning')
endif

" fzf.vim
nnoremap <c-p> :Files<cr>
imap <c-x><c-l> <plug>(fzf-complete-line)
imap <c-x><c-f> <plug>(fzf-complete-path)

nnoremap <silent> <leader>B :Buffers<CR>
nnoremap <silent> <leader>W :Windows<CR>
nnoremap <silent> <leader>; :BLines<CR>
nnoremap <silent> <leader>[ :BTags<CR>
nnoremap <silent> <leader>] :Tags<CR>
nnoremap <silent> <leader>? :History<CR>

" let g:polyglot_disabled = ["javascript"]

let g:used_javascript_libs = "underscore,backbone,jquery,handlebars"

" vim-commentary
" toggle comment
nmap cm <Plug>Commentary

map <leader>H :echo "hi<" . synIDattr(synID(line("."),col("."),1),"name") . '> trans<' . synIDattr(synID(line("."),col("."),0),"name") . "> lo<" . synIDattr(synIDtrans(synID(line("."),col("."),1)),"name") . ">" . " FG:" . synIDattr(synIDtrans(synID(line("."),col("."),1)),"fg#")<CR>
