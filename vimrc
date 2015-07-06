" ======================================
" vim-plug
" ======================================
call plug#begin('~/.vim/plugged')

Plug 'bling/vim-airline'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'pbrisbin/vim-mkdir'
Plug 'scrooloose/syntastic'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-dispatch'
Plug 'tpope/vim-endwise'
Plug 'tpope/vim-eunuch'
Plug 'tpope/vim-fugitive'
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

" html + css
Plug 'mattn/emmet-vim', { 'for': ['html', 'css', 'eruby', 'scss'] }
Plug 'othree/html5.vim', { 'for': ['html', 'eruby'] }

" ruby
Plug 'thoughtbot/vim-rspec'
Plug 'tpope/vim-bundler'
Plug 'tpope/vim-rails'
Plug 'vim-ruby/vim-ruby'
Plug 'kchmck/vim-coffee-script'
Plug 'nelstrom/vim-textobj-rubyblock'

" tmux
Plug 'christoomey/vim-tmux-navigator'

" colors
Plug 'acarapetis/vim-colors-github'
Plug 'NLKNguyen/papercolor-theme'
Plug 'w0ng/vim-hybrid'
Plug 'MaxSt/FlatColor'

call plug#end()

" ======================================
" settings
" ======================================

let mapleader = " "

" Backspace deletes like most programs in insert mode
set backspace=2
" show the cursor position all the time
set ruler
" display incomplete commands
set showcmd
" do incremental searching
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
" Open new split panes to right and bottom
set splitbelow
set splitright

set nobackup
set nowritebackup
set noswapfile
set history=500
set ignorecase
set hlsearch
set undolevels=1000
set number
set numberwidth=4
set clipboard=unnamed
set relativenumber
set ttimeout
set ttimeoutlen=1

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

function! GoToBuffer(split, bf)
  if bufexists(a:bf)
    if a:split == "s"
      exe "sb " . a:bf
    elseif a:split == "v"
      exe "vert sb" . a:bf
    else
      exe "b " . a:bf
    endif
  else
    echom "Buffer " . a:bf . " doesn't exist"
  endif
endfunction

" buffer switching
" use together with airline tabline to get the correct buffer number
" e.g. 12<tab><tab>
nnoremap gb   :<C-u>call GoToBuffer("c", v:count)<CR>
nnoremap gbs  :<C-u>call GoToBuffer("s", v:count)<CR>
nnoremap gbv  :<C-u>call GoToBuffer("v", v:count)<CR>

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

" delete buffer
nnoremap <c-x> :bdelete<cr>

" automatically rebalance windows on vim resize
autocmd VimResized * :wincmd =

" zoom a vim pane, <C-w>= to re-balance
nnoremap <leader>- :wincmd _<cr>:wincmd \|<cr>
nnoremap <leader>= :wincmd =<cr>

" ======================================
" plugins
" ======================================

" syntastic
" configure syntax checking to check on open as well as save
let g:syntastic_check_on_open=1
let g:syntastic_html_tidy_ignore_errors=[" proprietary attribute \"ng-"]

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

" Highlight and Delete trailing whitespace on save.
let g:DeleteTrailingWhitespace_Action = 'delete'
highlight ShowTrailingWhitespace ctermbg=Red guibg=Red

" vim-rspec
nnoremap <leader>t :call RunCurrentSpecFile()<CR>
nnoremap <leader>s :call RunNearestSpec()<CR>
nnoremap <leader>l :call RunLastSpec()<CR>

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
let g:UltiSnipsExpandTrigger = "<S-tab>"
let g:UltiSnipsListSnippets = "<c-j>"
let g:UltiSnipsJumpForwardTrigger = "<S-tab>"
let g:UltiSnipsJumpBackwardTrigger = "<c-k>"

" vim-airline
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#buffer_nr_show = 1
let g:airline#extensions#tmuxline#enabled = 1

map <leader>H :echo "hi<" . synIDattr(synID(line("."),col("."),1),"name") . '> trans<' . synIDattr(synID(line("."),col("."),0),"name") . "> lo<" . synIDattr(synIDtrans(synID(line("."),col("."),1)),"name") . ">" . " FG:" . synIDattr(synIDtrans(synID(line("."),col("."),1)),"fg#")<CR>

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

" Colors
set background=dark
let g:flatcolor_termcolors = 16
let g:flatcolor_asphaltbg = 1
let g:flatcolor_terminal_italics = 1
colorscheme flatcolor

nnoremap cot :call ToggleColors("flatcolor", "flatcolor")<CR>
