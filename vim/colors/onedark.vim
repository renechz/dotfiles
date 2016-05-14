" Vim Color File
" Name:       onedark.vim
" Version:    2.0
" Maintainer: github.com/renechz
" License:    The MIT License (MIT)
" Based On: pencil by github.com/reedes and github.com/mattly

hi clear

if exists('syntax on')
  syntax reset
endif

let g:colors_name = 'onedark'

if !exists("g:onedark_termcolors")
  let g:onedark_termcolors = 256
endif

" not all terminals support italics properly.  If yours does, opt-in.
if ! exists("g:onedark_terminal_italics")
  let g:onedark_terminal_italics = 0
endif

" Colors
let s:bg          = { "gui": "#282c34", "cterm": "235", "cterm16": "NONE" }
let s:fg          = { "gui": "#abb2bf", "cterm": "249", "cterm16": "15" }

let s:black       = { "gui": "#3e4451", "cterm": "234", "cterm16": "0" }
let s:black_dark  = { "gui": "#2c323c", "cterm": "235", "cterm16": "8" }

let s:red         = { "gui": "#E06C75", "cterm": "204", "cterm16": "1" }
let s:red_dark    = { "gui": "#BE5046", "cterm": "203", "cterm16": "9" }

let s:green       = { "gui": "#98C379", "cterm": "120", "cterm16": "2" }
let s:green_dark  = { "gui": "#50A14F", "cterm": "119", "cterm16": "10" }

let s:yellow      = { "gui": "#E5C07B", "cterm": "228", "cterm16": "3" }
let s:yellow_dark = { "gui": "#D19A66", "cterm": "215", "cterm16": "11" }

let s:blue        = { "gui": "#61AFEF", "cterm": "159", "cterm16": "4" }
let s:blue_dark   = { "gui": "#4078F2", "cterm": "75", "cterm16": "12" }

let s:purple      = { "gui": "#C678DD", "cterm": "141", "cterm16": "5" }
let s:purple_dark = { "gui": "#A626A4", "cterm": "135", "cterm16": "13" }

let s:cyan        = { "gui": "#56B6C2", "cterm": "122", "cterm16": "6" }
let s:cyan_dark   = { "gui": "#0184BC", "cterm": "121", "cterm16": "14" }

let s:white       = { "gui": "#FAFAFA", "cterm": "255", "cterm16": "7" }
let s:white_dark  = { "gui": "#ABB2BF", "cterm": "249", "cterm16": "15" }

let s:comment            = { "gui": "#5c6370", "cterm": "240", "cterm16": "240" }
let s:cursor         = { "gui": "#528bff", "cterm": "75", "cterm16": "75" }
let s:visual         = s:black
let s:line_highlight = s:black_dark

let s:diff_add    = { "gui": "#43d08a", "cterm": "252", "cterm16": "10" }
let s:diff_change = { "gui": "#e0c285", "cterm": "252", "cterm16": "3" }
let s:diff_delete = { "gui": "#e05252", "cterm": "252", "cterm16": "1" }

if &background == "dark"
  let s:bg_dark        = { "gui": "#21252b", "cterm": "234", "cterm16": "234" }
  let s:fg_dark        = { "gui": "#636d83", "cterm": "242", "cterm16": "242" }
else
  let s:bg             = s:white
  let s:bg_dark        = { "gui": "#e5e5e6", "cterm": "254", "cterm16": "254" }
  let s:fg             = { "gui": "#595c69", "cterm": "236", "cterm16": "236" }
  let s:fg_dark        = { "gui": "#9d9d9f", "cterm": "242", "cterm16": "242" }
  let s:fg3            = { "gui": "#a0a1a7", "cterm": "248", "cterm16": "248" }
  let s:red            = { "gui": "#e45649", "cterm": "204", "cterm16": "1" }
  let s:red_dark       = { "gui": "#ca1243", "cterm": "203", "cterm16": "9" }
  let s:green          = s:green_dark
  let s:yellow         = { "gui": "#986801", "cterm": "228", "cterm16": "3" }
  let s:yellow_dark    = { "gui": "#c18401", "cterm": "215", "cterm16": "11" }
  let s:blue           = s:blue_dark
  let s:purple         = s:purple_dark
  let s:cyan           = s:cyan_dark

  let s:comment        = s:fg3
  let s:cursor         = { "gui": "#528bff", "cterm": "75", "cterm16": "75" }
  let s:visual         = { "gui": "#ededed", "cterm": "253", "cterm16": "253" }
  let s:line_highlight = { "gui": "#f2f2f2", "cterm": "255", "cterm16": "255" }

  " Defined in atom's colorscheme but not used here so far. Here for reference
  " let s:fg2 = { "gui": "#696c77", "cterm": "240", "cterm16" : "240" }
endif

" shamelessly stolen from hemisu: https://github.com/noahfrederick/vim-hemisu/
function! s:h(group, style)
  " Not all terminals support italics properly. If yours does, opt-in.
  if g:onedark_terminal_italics == 0 && has_key(a:style, "cterm") && a:style["cterm"] == "italic"
    unlet a:style.cterm
  endif
  if g:onedark_termcolors == 16
    let l:ctermfg = (has_key(a:style, "fg") ? a:style.fg.cterm16 : "NONE")
    let l:ctermbg = (has_key(a:style, "bg") ? a:style.bg.cterm16 : "NONE")
  else
    let l:ctermfg = (has_key(a:style, "fg") ? a:style.fg.cterm : "NONE")
    let l:ctermbg = (has_key(a:style, "bg") ? a:style.bg.cterm : "NONE")
  end
  execute "highlight" a:group
    \ "guifg="   (has_key(a:style, "fg")  ? a:style.fg.gui : "NONE")
    \ "guibg="   (has_key(a:style, "bg")  ? a:style.bg.gui : "NONE")
    \ "guisp="   (has_key(a:style, "sp")  ? a:style.sp.gui : "NONE")
    \ "gui="     (has_key(a:style, "gui") ? a:style.gui    : "NONE")
    \ "ctermfg=" . l:ctermfg
    \ "ctermbg=" . l:ctermbg
    \ "cterm="   (has_key(a:style, "cterm") ? a:style.cterm : "NONE")
endfunction

call s:h("Normal",     { "bg": s:bg, "fg": s:fg })
call s:h("LineNr",     { "bg": s:black, "fg": s:white })
call s:h("FoldColumn", { "bg": s:black, "fg": s:white })
call s:h("Folded",     { "bg": s:black, "fg": s:white })
call s:h("MatchParen", { "bg": s:black, "fg": s:yellow_dark })
call s:h("SignColumn", { "bg": s:black, "fg": s:white })

call s:h("Comment",    { "fg": s:comment })
call s:h("Conceal",    { "fg": s:fg })
call s:h("Constant",   { "fg": s:red_dark })
call s:h("Error",      { "fg": s:red, "gui": "reverse", "cterm": "reverse" })
call s:h("Identifier", { "fg": s:green })
call s:h("Ignore",     { })
call s:h("PreProc",    { "fg": s:cyan })
call s:h("Special",    { "fg": s:green })
call s:h("Statement",  { "fg": s:blue_dark })
call s:h("String",     { "fg": s:green_dark })
call s:h("Todo",       { "gui": "reverse", "cterm": "reverse" })
call s:h("Type",       { "fg": s:purple_dark })
call s:h("Underlined", { "fg": s:cyan , "gui": "underline", "cterm": "underline" })

call s:h("NonText",      { "fg": s:bg_dark })

call s:h("Pmenu",        { "bg": s:black_dark, "fg": s:fg })
call s:h("PmenuSbar",    { "bg": s:bg_dark })
call s:h("PmenuSel",     { "bg": s:cyan, "fg": s:black_dark })
call s:h("PmenuThumb",   { "bg": s:cyan, "fg": s:cyan })

call s:h("ErrorMsg",     { "bg": s:red, "fg": s:bg })
call s:h("ModeMsg",      { "bg": s:green_dark, "fg": s:bg })
call s:h("MoreMsg",      { "fg": s:cyan })
call s:h("Question",     { "fg": s:green_dark })
call s:h("WarningMsg",   { "fg": s:red })

call s:h("TabLine",      { "bg": s:black_dark, "fg": s:yellow })
call s:h("TabLineFill",  { "bg": s:black_dark, "fg": s:black_dark })
call s:h("TabLineSel",   { "bg": s:yellow, "fg": s:bg })

call s:h("Cursor",       { "bg": s:white })
call s:h("CursorColumn", { "bg": s:line_highlight })
call s:h("CursorLine",   { "bg": s:line_highlight })
call s:h("CursorLineNr", { "bg": s:line_highlight, "fg": s:cyan_dark })

call s:h("StatusLine",   { "bg": s:yellow, "fg": s:bg })
call s:h("StatusLineNC", { "bg": s:black_dark, "fg": s:yellow })

call s:h("Visual",       { "bg": s:bg, "fg": s:blue_dark, "gui": "reverse", "cterm": "reverse" })
call s:h("VisualNOS",       { "cterm": "underline", "gui": "underline" })

call s:h("VertSplit",    { "bg": s:black_dark, "fg": s:black_dark })
call s:h("WildMenu",     { "bg": s:blue_dark, "fg": s:bg })

call s:h("Function",     { "fg": s:yellow_dark })
call s:h("SpecialKey",   { "fg": s:blue })
call s:h("Title",        { "fg": s:white_dark })

call s:h("DiffAdd",      { "bg": s:bg, "fg": s:green_dark, "gui": "reverse", "cterm": "reverse" })
call s:h("DiffChange",   { "bg": s:bg, "fg": s:purple, "gui": "reverse", "cterm": "reverse" })
call s:h("DiffDelete",   { "bg": s:bg, "fg": s:red, "gui": "reverse", "cterm": "reverse" })
call s:h("DiffText",     { "bg": s:bg, "fg": s:purple_dark, "gui": "reverse", "cterm": "reverse" })

call s:h("IncSearch",    { "bg": s:red, "fg": s:bg })
call s:h("Search",       { "bg": s:yellow_dark, "fg": s:bg })

call s:h("Directory",    { "fg": s:cyan_dark })

call s:h("SpellBad",   { "gui": "underline", "sp": s:red_dark })
call s:h("SpellCap",   { "gui": "underline", "sp": s:green })
call s:h("SpellLocal", { "gui": "underline", "sp": s:green_dark })
call s:h("SpellRare",  { "gui": "underline", "sp": s:red })

call s:h("ColorColumn",  { "bg": s:line_highlight })

hi link Boolean                  Constant
hi link Character                Constant
hi link Conditional              Statement
hi link Debug                    Special
hi link Define                   PreProc
hi link Delimiter                Special
hi link Exception                Statement
hi link Float                    Number
hi link HelpCommand              Statement
hi link HelpExample              Statement
hi link Include                  PreProc
hi link Keyword                  Statement
hi link Label                    Statement
hi link Macro                    PreProc
hi link Number                   Constant
hi link Operator                 Statement
hi link PreCondit                PreProc
hi link Repeat                   Statement
hi link SpecialChar              Special
hi link SpecialComment           Special
hi link StorageClass             Type
hi link Structure                Type
hi link Tag                      Special
hi link Typedef                  Type

hi link htmlEndTag               htmlTagName
hi link htmlLink                 Function
hi link htmlSpecialTagName       htmlTagName
hi link htmlTag                  htmlTagName
hi link htmlBold                 Normal
hi link htmlItalic               Normal
hi link xmlTag                   Statement
hi link xmlTagName               Statement
hi link xmlEndTag                Statement

hi link markdownItalic           Preproc
hi link asciidocQuotedEmphasized Preproc

hi link diffBDiffer              WarningMsg
hi link diffCommon               WarningMsg
hi link diffDiffer               WarningMsg
hi link diffIdentical            WarningMsg
hi link diffIsA                  WarningMsg
hi link diffNoEOL                WarningMsg
hi link diffOnly                 WarningMsg
hi link diffRemoved              WarningMsg
hi link diffAdded                String
