" Leader
let mapleader = "`"

set encoding=utf-8
set clipboard=unnamed   " Share clipboard.
set history=1000        " Remember more commands and search history
set incsearch           " Do incremental searching
set laststatus=2        " Always display the status line
set nobackup            " No backup file
set nocompatible        " Use Vim settings, rather then Vi settings
set noerrorbells        " Don't beep
set nowrap              " Don't wrap lines
set nowritebackup
set noswapfile
set ruler               " Show the cursor position all the time
set showcmd             " Display incomplete commands
set title               " Change the terminal's title
set undolevels=1000     " Use many levels of undo
set visualbell          " Don't beep

" Softtabs. 2 spaces
set tabstop=2
set shiftwidth=2
set expandtab
set softtabstop=2

" Numbers
set number
set numberwidth=5

set backspace=indent,eol,start " Allow backspacing over everything in insert mode
set autoindent                 " Always set autoindenting on
set copyindent                 " Copy the previous indentation on autoindenting
set number                     " Always show line numbers
set shiftwidth=2               " Number of spaces to use for autoindenting
set shiftround                 " Use multiple of shiftwidth when indenting with '<' and '>'
set showmatch                  " Set show matching parenthesis
set ignorecase                 " Ignore case when searching
set smartcase                  " Ignore case if search pattern is all lowercase, case-sensitive otherwise
set smarttab                   " Insert tabs on the start of a line according to shiftwidth, not tabstop
set hlsearch                   " Highlight search terms
set incsearch                  " Show search matches as you type
set pastetoggle=<F2>           " Avoid cascading indents when pasting large amounts of text
set hidden
set cursorline
set foldmethod=indent
set nofoldenable
set colorcolumn=80,120

" Load bundles from .vimrc.bundles
if filereadable(expand("~/.vimrc.bundles"))
  source ~/.vimrc.bundles
endif

" Switch syntax highlighting on, when the terminal has colors
" Also switch on highlighting the last used search pattern.
if (&t_Co > 2 || has("gui_running")) && !exists("syntax_on")
  syntax enable
  set background=light
  colorscheme solarized
endif

filetype plugin indent on

augroup vimrcEx
  autocmd!

" For all text files set 'textwidth' to 78 characters.
  autocmd FileType text setlocal textwidth=78

  " When editing a file, always jump to the last known cursor position.
  " Don't do it for commit messages, when the position is invalid, or when
  " inside an event handler (happens when dropping a file on gvim).
  autocmd BufReadPost *
    \ if &ft != 'gitcommit' && line("'\"") > 0 && line("'\"") <= line("$") |
    \   exe "normal g`\"" |
    \ endif

  " Set syntax highlighting for specific file types
  autocmd BufRead,BufNewFile *.md set filetype=markdown

  " Enable spellchecking for Markdown
  autocmd BufRead,BufNewFile *.md setlocal spell

  " Automatically wrap at 80 characters for Markdown
  autocmd BufRead,BufNewFile *.md setlocal textwidth=80
augroup END

" Use The Silver Searcher
" https://github.com/ggreer/the_silver_searcher
if executable('ag')
  " Use Ag over Grep
  set grepprg=ag\ --nogroup\ --nocolor

  " Use ag in CtrlP for listing files. Lightning fast and respects
  " .gitignore
  let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'
endif

" Snippets are activated by Shift+Tab
let g:snippetsEmu_key = "<S-Tab>"

" Tab completion
" will insert tab at beginning of line,
" will use completion if not at beginning
set wildmode=list:longest,list:full
set complete=.,w,t

function! InsertTabWrapper()
  let col = col('.') - 1

  if !col || getline('.')[col - 1] !~ '\k'
    return "\<tab>"
  else
    return "\<c-p>"
  endif
endfunction

inoremap <Tab> <c-r>=InsertTabWrapper()<cr>

" Exclude Javascript files in :Rtags via rails.vim due to warnings when
" parsing
let g:Tlist_Ctags_Cmd="ctags --exclude='*.js'"

" Index ctags from any project, including those outside Rails
map <Leader>ct :!ctags -R .<CR>

" Switch between the last two files
nnoremap <Leader><Leader> <c-^>

" Save file with <C-s>
nmap <C-s> <Esc>:w<CR>
vmap <C-s> <Esc><C-s>gv
imap <C-s> <Esc><C-s>

" Treat <li> and <p> tags like the block tags they are
let g:html_indent_tags = 'li\|p'

" Set the tag file search order
set tags=./tags;

" Open new split panes to right and bottom.
set splitbelow
set splitright

" Easier split navigation.
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" configure syntastic syntax checking to check on open as well as save
let g:syntastic_check_on_open=1

" CtrlP configuration
" =============================
let g:ctrlp_extensions = [
\ 'tag', 'buffertag', 'quickfix', 'dir', 'rtscript',
\ 'undo', 'line', 'changes', 'mixed', 'bookmarkdir'
\]

let g:ctrlp_map = '<C-t>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_match_window = 'top,order:ttb'

" Highlight and Delete trailing whitespace on save.
let g:DeleteTrailingWhitespace_Action = 'delete'
highlight ShowTrailingWhitespace ctermbg=Red guibg=Red

" NERDTree
map <Leader>nt :NERDTreeToggle<CR>
