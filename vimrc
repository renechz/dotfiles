" ======================================
" vim-plug
" ======================================
call plug#begin('~/.vim/plugged')

Plug 'bling/vim-airline'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'junegunn/vim-easy-align'
Plug 'scrooloose/syntastic'
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-dispatch'
Plug 'tpope/vim-endwise'
Plug 'tpope/vim-eunuch'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-unimpaired'
Plug 'tpope/vim-vinegar'
Plug 'kana/vim-textobj-user'
Plug 'Valloric/YouCompleteMe'
Plug 'elixir-lang/vim-elixir'

" html + css
Plug 'mattn/emmet-vim', { 'for': ['html', 'jst', 'css', 'eruby', 'scss'] }
Plug 'othree/html5.vim', { 'for': ['html', 'eruby', 'jst'] }

" ruby
Plug 'thoughtbot/vim-rspec'
Plug 'tpope/vim-bundler'
Plug 'tpope/vim-rails'
Plug 'vim-ruby/vim-ruby'
Plug 'nelstrom/vim-textobj-rubyblock'

" javascript
Plug 'moll/vim-node'
Plug 'jelera/vim-javascript-syntax'
Plug 'othree/javascript-libraries-syntax.vim'
Plug 'briancollins/vim-jst'
Plug 'mustache/vim-mustache-handlebars'
Plug 'kchmck/vim-coffee-script'

" tmux
Plug 'christoomey/vim-tmux-navigator'

" colors
Plug 'MaxSt/FlatColor'

call plug#end()

" ======================================
" settings
" ======================================

let mapleader = " "

set autoindent
set autoread
set backspace=indent,eol,start
set clipboard=unnamed
" Complete terms from all buffers
set complete=.,w,b,u,t,i
" show the cursor position all the time
" do incremental searching
set hidden
set incsearch
" Always display the status line
set laststatus=2
" Automatically :write before running commands
set autowrite
" Display extra whitespace
set list listchars=tab:»·,trail:·,nbsp:·
" Always use vertical diffs
set diffopt+=vertical
" Softtabs, 2 spaces
set tabstop=2
set shiftwidth=2
set shiftround
set expandtab
" Make it obvious where 80 and 100 characters is
set textwidth=80
set colorcolumn=+1,+21
set cursorline

" Open new split panes to right and bottom
set splitbelow
set splitright

set nobackup
set nowritebackup
set noswapfile
set nrformats-=octal
set history=1000
set ignorecase
set hlsearch
set undolevels=1000
set number
set numberwidth=4
set relativenumber
set ruler
" display incomplete commands
set showcmd
set smarttab
set ttimeout
set ttimeoutlen=100
set wildmenu

" Persistent undo
let undodir = expand('~/.undo-vim')
if !isdirectory(undodir)
  call mkdir(undodir)
endif
set undodir=~/.undo-vim
" Create FILE.un~ files for persistent undo
set undofile

" Switch syntax highlighting on, when the terminal has colors
" Also switch on highlighting the last used search pattern.
if (&t_Co > 2 || has("gui_running")) && !exists("syntax_on")
  syntax on
endif

" Treat <li> and <p> tags like the block tags they are
let g:html_indent_tags = 'li\|p'

" ======================================
" keybindings
" ======================================

" Switch to last active buffer
noremap <leader><space> :buffer #<CR>

" Switch between the last two files
nnoremap <leader><leader> <c-^>

" Bind K to grep word under cursor
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

" unload buffer
nnoremap <c-x> :bdelete<cr>

" automatically rebalance windows on vim resize
autocmd VimResized * :wincmd =

" zoom a vim pane, <C-w>= to re-balance
nnoremap <leader>- :wincmd _<cr>:wincmd \|<cr>
nnoremap <leader>= :wincmd =<cr>

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

" syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_check_on_wq = 0

let g:syntastic_ruby_checkers = ["rubocop", "mri"]
let g:syntastic_eruby_checkers = ["rubocop", "mri", "tidy"]
let g:syntastic_html_tidy_exec = "tidy5"
let g:syntastic_aggregate_errors = 1


" CtrlP
" Use The Silver Searcher https://github.com/ggreer/the_silver_searcher
if executable('ag')
  " Use Ag over Grep
  set grepprg=ag\ --nogroup\ --nocolor

  " Use ag in CtrlP for listing files. Lightning fast and respects .gitignore
  let g:ctrlp_user_command = 'ag %s -l --nocolor --hidden -g ""'

  " ag is fast enough that CtrlP doesn't need to cache
  let g:ctrlp_use_caching = 0
endif

let g:ctrlp_match_window = 'top,order:ttb'
let g:ctrlp_extensions = ['tag', 'buffertag']
nnoremap <Leader>pr :CtrlPBufTag<cr>

" vim-rspec
nnoremap <leader>t :call RunCurrentSpecFile()<CR>
nnoremap <leader>s :call RunNearestSpec()<CR>
nnoremap <leader>l :call RunLastSpec()<CR>
nnoremap <leader>a :call RunAllSpecs()<CR>

" Run specs using vim-dispatch
let g:rspec_command = "Dispatch rspec {spec}"

" vim-rails
" go to Alternate file
nnoremap ga :A<CR>
vnoremap ga :A<CR>
nnoremap gsa :AS<CR>
vnoremap gsa :AS<CR>
nnoremap gva :AV<CR>
vnoremap gva :AV<CR>

" go to Related file
nnoremap gr :R<CR>
vnoremap gr :R<CR>
nnoremap gsr :RS<CR>
vnoremap gsr :RS<CR>
nnoremap gvr :RV<CR>
vnoremap gvr :RV<CR>

" vim-commentary
" toggle comment
nmap cm <Plug>Commentary

" vim-easyalign
" start interactive EasyAlign in visual mode (e.g. vip<Enter>)
vmap <Enter> <Plug>(EasyAlign)

" UltiSnips
let g:UltiSnipsSnippetsDir='~/.vim/snippets'
let g:UltiSnipsExpandTrigger = '<tab>'
let g:UltiSnipsEditSplit = 'vertical'
let g:UltiSnipsJumpForwardTrigger = '<tab>'
let g:UltiSnipsJumpBackwardTrigger = '<s-tab>'

nnoremap <leader>ue :UltiSnipsEdit<cr>

" vim-airline
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#buffer_nr_show = 1
let g:airline#extensions#tmuxline#enabled = 1

" YouCompleteMe - Intelligent completion with fuzzy matching
let g:ycm_dont_warn_on_startup = 0
let g:ycm_complete_in_comments = 1
let g:ycm_complete_in_strings = 1
let g:ycm_collect_identifiers_from_comments_and_strings = 1
let g:ycm_filetype_blacklist = {}
let g:ycm_key_list_select_completion   = ['<C-j>', '<C-n>', '<Down>']
let g:ycm_key_list_previous_completion = ['<C-k>', '<C-p>', '<Up>']

" supertab - enhanced tab behavior based on context
let g:SuperTabDefaultCompletionType = '<C-n>'
let g:SuperTabCrMapping = 0

let g:mustache_abbreviations = 1

map <leader>H :echo "hi<" . synIDattr(synID(line("."),col("."),1),"name") . '> trans<' . synIDattr(synID(line("."),col("."),0),"name") . "> lo<" . synIDattr(synIDtrans(synID(line("."),col("."),1)),"name") . ">" . " FG:" . synIDattr(synIDtrans(synID(line("."),col("."),1)),"fg#")<CR>

" Colors
let g:material_dark = 1
let g:material_termcolors = 16
let g:material_terminal_italics = 1

" neovim
let $NVIM_TUI_ENABLE_TRUE_COLOR = 1

set background=dark
colorscheme material
