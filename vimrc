" ======================================
" vim-plug
" ======================================
call plug#begin('~/.vim/plugged')

Plug 'bling/vim-airline'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'christoomey/vim-tmux-navigator'
Plug 'pbrisbin/vim-mkdir'
Plug 'scrooloose/syntastic'
Plug 'thoughtbot/vim-rspec'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-dispatch'
Plug 'tpope/vim-endwise'
Plug 'tpope/vim-eunuch'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-rails'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-unimpaired'
Plug 'junegunn/vim-easy-align'
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
Plug 'vim-scripts/ctags.vim'
Plug 'vim-scripts/matchit.zip'
Plug 'vim-scripts/DeleteTrailingWhitespace'
Plug 'vim-scripts/ShowTrailingWhitespace'
Plug 'ludovicchabant/vim-gutentags'
Plug 'kana/vim-textobj-user'
Plug 'mattn/emmet-vim'
Plug 'othree/html5.vim'

" ruby
Plug 'tpope/vim-bundler'
Plug 'vim-ruby/vim-ruby'
Plug 'kchmck/vim-coffee-script'
Plug 'nelstrom/vim-textobj-rubyblock'

" colors
Plug 'morhetz/gruvbox'
Plug 'NLKNguyen/papercolor-theme'
Plug 'acarapetis/vim-colors-github'

call plug#end()

" Leader
let mapleader = " "

set backspace=2   " Backspace deletes like most programs in insert mode
set nobackup
set nowritebackup
set noswapfile
set history=500
set ruler         " show the cursor position all the time
set showcmd       " display incomplete commands
set incsearch     " do incremental searching
set laststatus=2  " Always display the status line
set autowrite     " Automatically :write before running commands
set ignorecase
set hlsearch
set undolevels=1000
set number
set numberwidth=4
set list listchars=tab:»·,trail:·,nbsp:· " Display extra whitespace
set diffopt+=vertical " Always use vertical diffs
set clipboard=unnamed
set relativenumber
set ttimeout
set ttimeoutlen=1

" Softtabs, 2 spaces
set tabstop=2
set shiftwidth=2
set shiftround
set expandtab

" Make it obvious where 80 characters is
set textwidth=80
set colorcolumn=+1

" Open new split panes to right and bottom
set splitbelow
set splitright

" Colors
" set background=dark
colorscheme gruvbox

" toggle colorscheme
function! ToggleColors(light, dark)
  if &background == 'dark'
    set background=light
    exe "colorscheme ". a:light
  else
    set background=dark
    exe "colorscheme ". a:dark
  endif
endfunction

nnoremap cot :call ToggleColors("PaperColor", "gruvbox")<CR>

" Switch syntax highlighting on, when the terminal has colors
" Also switch on highlighting the last used search pattern.
if (&t_Co > 2 || has("gui_running")) && !exists("syntax_on")
  syntax on
endif

" Use The Silver Searcher https://github.com/ggreer/the_silver_searcher
if executable('ag')
  " Use Ag over Grep
  set grepprg=ag\ --nogroup\ --nocolor

  " Use ag in CtrlP for listing files. Lightning fast and respects .gitignore
  let g:ctrlp_user_command = 'ag %s -l --nocolor --hidden -g ""'

  " ag is fast enough that CtrlP doesn't need to cache
  let g:ctrlp_use_caching = 0
endif

" Exclude Javascript files in :Rtags via rails.vim due to warnings when parsing
let g:Tlist_Ctags_Cmd="ctags --exclude='*.js'"

" Switch between the last two files
nnoremap <leader><leader> <c-^>

" Bind K to grep word under cursor
nnoremap K :grep! "\b<C-R><C-W>\b"<CR>:cw<CR>

" Treat <li> and <p> tags like the block tags they are
let g:html_indent_tags = 'li\|p'

" Quicker window movement
nnoremap <c-j> <c-w>j
nnoremap <c-k> <c-w>k
nnoremap <c-h> <c-w>h
nnoremap <c-l> <c-w>l

" configure syntastic syntax checking to check on open as well as save
let g:syntastic_check_on_open=1
let g:syntastic_html_tidy_ignore_errors=[" proprietary attribute \"ng-"]

" Save file with <C-s>
nmap <c-s> <Esc>:w<CR>
vmap <c-s> <Esc><c-s>gv
imap <c-s> <Esc><c-s>

" ctrlp
let g:ctrlp_match_window = 'top,order:ttb'
let g:ctrlp_extensions = ['tag', 'buffertag']
nmap <Leader>pr :CtrlPBufTag<cr>

" Highlight and Delete trailing whitespace on save.
let g:DeleteTrailingWhitespace_Action = 'delete'
highlight ShowTrailingWhitespace ctermbg=Red guibg=Red

" vim-rspec
nnoremap <leader>t :call RunCurrentSpecFile()<CR>
nnoremap <leader>s :call RunNearestSpec()<CR>
nnoremap <leader>l :call RunLastSpec()<CR>
" Run specs using vim-dispatch
let g:rspec_command = "Dispatch rspec {spec}"

" vim-rails -- Go to Alternate file
nnoremap ga :A<CR>
vnoremap ga :A<CR>
nnoremap gsa :AS<CR>
vnoremap gsa :AS<CR>
nnoremap gva :AV<CR>
vnoremap gva :AV<CR>

" vim-rails -- Go to Related file
nnoremap gr :R<CR>
vnoremap gr :R<CR>
nnoremap gsr :RS<CR>
vnoremap gsr :RS<CR>
nnoremap gvr :RV<CR>
vnoremap gvr :RV<CR>

" vim-commentary -- Toggle comment
nmap cm <Plug>Commentary

" emmet-vim -- Enable Emmet just for HTML/CSS/ERB/SASS
let g:user_emmet_install_global = 0
autocmd FileType html,css,eruby,scss EmmetInstall

" easyalign
" Start interactive EasyAlign in visual mode (e.g. vip<Enter>)
vnoremap <Enter> <Plug>(EasyAlign)

" ultisnips
let g:UltiSnipsExpandTrigger = "<S-tab>"
let g:UltiSnipsListSnippets = "<c-j>"
let g:UltiSnipsJumpForwardTrigger = "<S-tab>"
let g:UltiSnipsJumpBackwardTrigger = "<c-k>"

" airline
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#buffer_nr_show = 1
let g:airline#extensions#tmuxline#enabled = 1

nnoremap <c-x> :bdelete<cr>
" automatically rebalance windows on vim resize
autocmd VimResized * :wincmd =

" zoom a vim pane, <C-w>= to re-balance
nnoremap <leader>- :wincmd _<cr>:wincmd \|<cr>
nnoremap <leader>= :wincmd =<cr>
