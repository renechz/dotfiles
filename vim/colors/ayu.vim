" Vim Color File
" Name:       ayu.vim
" Maintainer: https://github.com/renechz/ayu.vim/
" License:    The MIT License (MIT)
" Based On:   https://github.com/MaxSt/FlatColor/

highlight clear

if exists("syntax_on")
  syntax reset
endif

let g:colors_name = "ayu"
let s:is_dark = (&background == "dark")

" vim-hemisu: https://github.com/noahfrederick/vim-hemisu/
function! s:h(group, style)
  let l:ctermfg = (has_key(a:style, "fg") ? a:style.fg.cterm : "NONE")
  let l:ctermbg = (has_key(a:style, "bg") ? a:style.bg.cterm : "NONE")

  execute "highlight" a:group
    \ "guifg="   (has_key(a:style, "fg")  ? a:style.fg.hex : "NONE")
    \ "guibg="   (has_key(a:style, "bg")  ? a:style.bg.hex : "NONE")
    \ "guisp="   (has_key(a:style, "sp")  ? a:style.sp.hex : "NONE")
    \ "gui="     (has_key(a:style, "gui") ? a:style.gui    : "NONE")
    \ "ctermfg=" . l:ctermfg
    \ "ctermbg=" . l:ctermbg
    \ "cterm="   (has_key(a:style, "cterm") ? a:style.cterm : "NONE")
endfunction

let s:ayu  = {
      \ "mirage": {
      \ "common": {
          \ "bg":     { "hex": "#212733", "cterm": "235" },
          \ "fg":     { "hex": "#d9d7ce", "cterm": "188" },
          \ "accent": { "hex": "#ffcc66", "cterm": "221" },
      \ },
      \ "ui": {
          \ "fg":           { "hex": "#607080", "cterm": "60" },
          \ "grid_divider": { "hex": "#343d4a", "cterm": "237" },
          \ "folder":       { "normal": { "hex": "#3e4b59", "cterm": "239" } },
          \ "scrollbar":    { "puck":   { "hex": "#ffffff", "cterm": "231" } },
          \ "panel": {
              \ "bg":      { "hex": "#272d38", "cterm": "236" },
              \ "shadow":  { "hex": "#11141a", "cterm": "233" },
              \ "path_fg": { "hex": "#607080", "cterm": "60" },
              \ "row_bg":  { "hex": "#303540", "cterm": "236" }
          \ },
      \ },
      \ "syntax": {
          \ "comment":      { "hex": "#5c6773", "cterm": "242" },
          \ "error":        { "hex": "#ff3333", "cterm": "203" },
          \ "gutter_fg":    { "hex": "#3d4752", "cterm": "238" },
          \ "line_hg":      { "hex": "#242b38", "cterm": "235" },
          \ "selection":    { "hex": "#343f4c", "cterm": "237" },
          \ "stack_guide":  { "hex": "#39434d", "cterm": "238" },
          \ "active_guide": { "hex": "#606f80", "cterm": "60" },
          \ "tag":          { "hex": "#5ccfe6", "cterm": "80" },
          \ "func":         { "hex": "#ffd580", "cterm": "222" },
          \ "string":       { "hex": "#bae67e", "cterm": "150" },
          \ "regexp":       { "hex": "#95e6cb", "cterm": "49" },
          \ "sup_var":      { "hex": "#f07178", "cterm": "225" },
          \ "keyword":      { "hex": "#ffae57", "cterm": "215" },
          \ "special":      { "hex": "#ffc44c", "cterm": "222" },
          \ "constant":     { "hex": "#d4bfff", "cterm": "183" },
          \ "operator":     { "hex": "#80d4ff", "cterm": "117" }
      \ }
      \ },
      \ "light": {
          \ "common": {
              \ "fg":     { "hex": "#5b544d", "cterm": "242" },
              \ "bg":     { "hex": "#fbfaf9", "cterm": "231" },
              \ "accent": { "hex": "#d88c41", "cterm": "202" },
          \ },
      \ "ui": {
          \ "fg": { "hex": "#828c99", "cterm": "245" },
          \ "folder":    { "normal": { "hex": "#828c99", "cterm": "245" } },
          \ "scrollbar": { "puck":   { "hex": "#000000", "cterm": "0" } },
          \ "grid_divider": { "hex": "#e2e4e7", "cterm": "254" },
          \ "panel": {
              \ "bg":      { "hex": "#ffffff", "cterm": "231" },
              \ "shadow":  { "hex": "#a0a0a0", "cterm": "10" },
              \ "path_fg": { "hex": "#b0bec5", "cterm": "10" },
              \ "row_bg":  { "hex": "#f5f5f5", "cterm": "10" },
          \ },
      \ },
      \ "syntax": {
          \ "error":        { "hex": "#ff3333", "cterm": "203" },
          \ "line_hg":      { "hex": "#f2f2f2", "cterm": "255" },
          \ "gutter_fg":    { "hex": "#d9d8d7", "cterm": "188" },
          \ "selection":    { "hex": "#ebe6e1", "cterm": "255" },
          \ "stack_guide":  { "hex": "#dedddc", "cterm": "253" },
          \ "active_guide": { "hex": "#e7e1da", "cterm": "249" },
          \ "tag":          { "hex": "#41a6d9", "cterm": "74" },
          \ "func":         { "hex": "#f29718", "cterm": "208" },
          \ "regexp":       { "hex": "#4dbf99", "cterm": "10" },
          \ "string":       { "hex": "#86b300", "cterm": "106" },
          \ "comment":      { "hex": "#abb0b6", "cterm": "145" },
          \ "sup_var":      { "hex": "#f07178", "cterm": "225" },
          \ "special":      { "hex": "#cca37a", "cterm": "10" },
          \ "keyword":      { "hex": "#f2590c", "cterm": "202" },
          \ "operator":     { "hex": "#e7c547", "cterm": "185" },
          \ "constant":     { "hex": "#a37acc", "cterm": "140" },
      \ }
      \ }
      \ }

if s:is_dark
  set background=dark
  let s:theme = s:ayu.mirage
else
  set background=light
  let s:theme = s:ayu.light
endif

call s:h("Normal", { "fg": s:theme.common.fg, "bg": s:theme.common.bg })

if s:is_dark
  set background=dark
  let s:theme = s:ayu.mirage
else
  set background=light
  let s:theme = s:ayu.light
endif

call s:h("ColorColumn",   { "bg": s:theme.syntax.line_hg })
call s:h("CursorColumn",  { "bg": s:theme.syntax.line_hg })
call s:h("CursorLine",    { "bg": s:theme.syntax.line_hg })
call s:h("CursorLineNr",  { "fg": s:theme.common.accent, "bg": s:theme.syntax.line_hg })
call s:h("LineNr",        { "fg": s:theme.syntax.gutter_fg })
call s:h("Cursor",        { "bg": s:theme.common.accent })
call s:h("CursorIM",      { "bg": s:theme.common.accent })
call s:h("Directory",     { "fg": s:theme.ui.fg })

call s:h("DiffAdd",       { "fg": s:theme.syntax.string, "bg": s:theme.ui.panel.bg })
call s:h("DiffChange",    { "fg": s:theme.syntax.tag, "bg": s:theme.ui.panel.bg })
call s:h("DiffDelete",    { "fg": s:theme.syntax.error, "bg": s:theme.ui.panel.bg })
call s:h("DiffText",      { "fg": s:theme.common.fg, "bg": s:theme.ui.panel.bg })

call s:h("ErrorMsg",      { "fg": s:theme.common.fg, "bg": s:theme.syntax.error })
call s:h("VertSplit",     { "fg": s:theme.common.bg })
call s:h("Folded",        { "fg": s:theme.ui.fg, "bg": s:theme.ui.panel.bg })
call s:h("FoldColumn",    { "bg": s:theme.ui.panel.bg })
call s:h("SignColumn",    { "bg": s:theme.ui.panel.bg })
call s:h("IncSearch",     { "fg": s:theme.common.bg, "bg": s:theme.syntax.constant })
call s:h("MatchParen",    { "fg": s:theme.common.bg, "bg": s:theme.common.accent })
call s:h("ModeMsg",       { "fg": s:theme.syntax.string })
call s:h("MoreMsg",       { "fg": s:theme.syntax.string })
call s:h("NonText",       { "fg": s:theme.common.bg })
call s:h("Pmenu",         { "fg": s:theme.common.fg, "bg": s:theme.syntax.selection })
call s:h("PmenuSel",      { "fg": s:theme.common.fg, "bg": s:theme.syntax.selection, "gui": "reverse", "cterm": "reverse" })
call s:h("PmenuSbar",     { "fg": s:theme.ui.scrollbar.puck })
call s:h("PmenuThumb",    { "fg": s:theme.ui.scrollbar.puck })
call s:h("Question",      { "fg": s:theme.syntax.string })
call s:h("Search",        { "fg": s:theme.common.bg, "bg": s:theme.syntax.constant })
call s:h("SpecialKey",    { "fg": s:theme.syntax.selection })
call s:h("StatusLine",    { "fg": s:theme.common.fg, "bg": s:theme.ui.panel.bg })
call s:h("StatusLineNC",  { "fg": s:theme.common.fg, "bg": s:theme.ui.panel.bg })
call s:h("TabLine",       { "fg": s:theme.ui.fg, "bg": s:theme.ui.grid_divider })
call s:h("TabLineFill",   { "bg": s:theme.ui.panel.bg })
call s:h("TabLineSel",    { "fg": s:theme.common.accent, "bg": s:theme.common.bg })
call s:h("Title",         { "fg": s:theme.syntax.keyword })
call s:h("Visual",        { "bg": s:theme.syntax.selection })
call s:h("WarningMsg",    { "fg": s:theme.syntax.error })
call s:h("WildMenu",      { "fg": s:theme.common.bg, "bg": s:theme.syntax.sup_var })

call s:h("Comment",      { "fg": s:theme.syntax.comment, "gui": "italic", "cterm": "italic" })
call s:h("Constant",     { "fg": s:theme.syntax.constant })
call s:h("String",       { "fg": s:theme.syntax.string })
call s:h("Identifier",   { "fg": s:theme.syntax.tag })
call s:h("Function",     { "fg": s:theme.syntax.func })
call s:h("Statement",    { "fg": s:theme.syntax.keyword })
call s:h("Operator",     { "fg": s:theme.syntax.operator })
call s:h("PreProc",      { "fg": s:theme.syntax.special })
call s:h("Type",         { "fg": s:theme.syntax.tag })
call s:h("Structure",    { "fg": s:theme.syntax.special })
call s:h("Special",      { "fg": s:theme.syntax.special })
call s:h("Delimiter",    { "fg": s:theme.common.fg })
call s:h("Underlined",   { "fg": s:theme.syntax.tag, "cterm": "underline" })
call s:h("Error",        { "bg": s:theme.syntax.error })
call s:h("Todo",         { "fg": s:theme.syntax.sup_var })
call s:h("Quote",        { "fg": s:theme.syntax.tag })
call s:h("qfLineNr",     { "fg": s:theme.syntax.keyword })

hi link cssClassName        Keyword
hi link cssClassNameDot     cssClassName
hi link cssKeyFrameSelector Keyword
hi link cssIdentifier       Keyword
hi link cssTagName          Keyword
hi link cssProp             Identifier
hi link cssIncludeKeyword   Keyword
hi link cssMediaType        Constant
hi link cssMediaProp        Type
hi link cssTagName          Identifier
hi link cssBraces           Normal

hi link gitcommitComment        Comment
hi link gitcommitBranch         Constant
hi link gitcommitDiscardedType  Error
hi link gitcommitDiscardedFile  Error
hi link gitcommitUnmergedFile   Keyword
hi link gitcommitUnmerged       Tag
hi link gitcommitSelectedType   Tag
hi link gitcommitUntrackedFile  Tag
hi link gitcommitSelectedFile   Tag
hi link gitcommitNoBranch       gitcommitBranch
hi link gitcommitUntracked      gitcommitComment
hi link gitcommitDiscarded      gitcommitComment
hi link gitcommitSelected       gitcommitComment
hi link gitcommitDiscardedArrow gitcommitDiscardedFile
hi link gitcommitSelectedArrow  gitcommitSelectedFile
hi link gitcommitUnmergedArrow  gitcommitUnmergedFile

hi link htmlArg            Keyword
hi link htmlH1             Title
hi link htmlEndTag         Type
hi link htmlSpecialTagName Type
hi link htmlTag            Type
hi link htmlTagName        Type

hi link jsStorageClass Keyword
hi link jsFunction     Keyword
hi link jsVariableDef  Function
hi link jsOperator     Keyword
hi link jsNull         Boolean
hi link jsGlobalObject Type
hi link jsObjectProp   Function
hi link jsUndefined    Constant
hi link jsFuncArgs     Constant
hi link jsArguments    Type
hi link jsThis         Type

hi link jsonBoolean Boolean

call s:h("rubyInstanceVariable", { "fg": s:theme.syntax.sup_var })
hi link rubySymbol                 rubyInstanceVariable
hi link rubyClass                  Keyword
hi link rubyInclude                Function
hi link rubyKeywordAsMethod        Function
hi link rubyOperator               Keyword
hi link rubyStringDelimiter        String
hi link rubyInterpolationDelimiter Type
hi link rubyConstant               Type

hi link sassFor        Type
hi link sassVariable   Constant
hi link sassMedia      Type
hi link sassAmpersand  Keyword
hi link sassDefinition Type
hi link sassMediaQuery Type
hi link sassMixinName  Type
hi link sassMixin      Type
hi link sassControl    Keyword
hi link sassExtend     Constant
hi link sassClass      cssClassName
hi link sassClassChar  cssClassName
hi link sassId         cssIdentifier
hi link sassIdChar     cssIdentifier
hi link sassInclude    PreProc
hi link sassMixing     PreProc

hi link vimBracket Function

" https://github.com/tpope/vim-fugitive
hi link diffAdded   DiffAdd
hi link diffRemoved DiffDelete

" https://github.com/w0rp/ale
call s:h("ALEWarningSign", {})
call s:h("ALEErrorSign",   {})
