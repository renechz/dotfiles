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
  execute "highlight" a:group
    \ "guifg="   (has_key(a:style, "fg")    ? a:style.fg    : "NONE")
    \ "guibg="   (has_key(a:style, "bg")    ? a:style.bg    : "NONE")
    \ "guisp="   (has_key(a:style, "sp")    ? a:style.sp    : "NONE")
    \ "gui="     (has_key(a:style, "gui")   ? a:style.gui   : "NONE")
    \ "cterm="   (has_key(a:style, "cterm") ? a:style.cterm : "NONE")
endfunction

let s:ayu  = {
\   "bg":            { "mirage": "#212733", "light": "#fafafa" },
\   "fg":            { "mirage": "#d9d7ce", "light": "#5c6773" },
\   "accent":        { "mirage": "#ffcc66", "light": "#ff6a00" },
\   "ui": {
\     "fg":          { "mirage": "#607080", "light": "#828c99" },
\     "gridDivider": { "mirage": "#343d4a", "light": "#e2e4e7" },
\     "folder":      { "mirage": "#3e4b59", "light": "#828c99" },
\     "scrollbar":   { "mirage": "#ffffff", "light": "#000000" },
\     "panel": {
\       "bg":        { "mirage": "#272d38", "light": "#ffffff" },
\       "shadow":    { "mirage": "#11141a", "light": "#a0a0a0" },
\       "pathFg":    { "mirage": "#607080", "light": "#b0bec5" },
\       "rowBg":     { "mirage": "#303540", "light": "#f5f5f5" },
\     },
\   },
\   "syntax": {
\     "error":       { "mirage": "#ff3333", "light": "#ff3333" },
\     "lineHg":      { "mirage": "#242b38", "light": "#f2f2f2" },
\     "gutterFg":    { "mirage": "#3d4752", "light": "#d9d8d7" },
\     "selection":   { "mirage": "#343f4c", "light": "#f0eee4" },
\     "stackGuide":  { "mirage": "#39434d", "light": "#dedddc" },
\     "activeGuide": { "mirage": "#606f80", "light": "#b3b2b1" },
\     "tag":         { "mirage": "#5ccfe6", "light": "#41a6d9" },
\     "func":        { "mirage": "#ffd580", "light": "#f29718" },
\     "regexp":      { "mirage": "#95e6cb", "light": "#4dbf99" },
\     "string":      { "mirage": "#bae67e", "light": "#86b300" },
\     "comment":     { "mirage": "#5c6773", "light": "#abb0b6" },
\     "supVar":      { "mirage": "#f07178", "light": "#f07178" },
\     "keyword":     { "mirage": "#ffae57", "light": "#f2590c" },
\     "esSpec":      { "mirage": "#ffc44c", "light": "#cca37a" },
\     "constant":    { "mirage": "#d4bfff", "light": "#a37acc" },
\     "operator":    { "mirage": "#80d4ff", "light": "#e7c547" },
\   },
\ }

if s:is_dark
  let s:theme = "mirage"
  set background=dark
else
  let s:theme = "light"
  set background=light
endif

call s:h("Normal",        { "fg": s:ayu.fg[s:theme], "bg": s:ayu.bg[s:theme] })
call s:h("ColorColumn",   { "bg": s:ayu.syntax.lineHg[s:theme] })
call s:h("CursorColumn",  { "bg": s:ayu.syntax.lineHg[s:theme] })
call s:h("CursorLine",    { "bg": s:ayu.syntax.lineHg[s:theme] })
call s:h("CursorLineNr",  { "fg": s:ayu.accent[s:theme], "bg": s:ayu.syntax.lineHg[s:theme] })
call s:h("LineNr",        { "fg": s:ayu.syntax.gutterFg[s:theme] })
call s:h("Cursor",        { "bg": s:ayu.accent[s:theme] })
call s:h("CursorIM",      { "bg": s:ayu.accent[s:theme] })
call s:h("Directory",     { "fg": s:ayu.ui.folder[s:theme] })

call s:h("DiffAdd",       { "fg": s:ayu.syntax.string[s:theme], "bg": s:ayu.ui.panel.bg[s:theme] })
call s:h("DiffChange",    { "fg": s:ayu.syntax.tag[s:theme], "bg": s:ayu.ui.panel.bg[s:theme] })
call s:h("DiffDelete",    { "fg": s:ayu.syntax.error[s:theme], "bg": s:ayu.ui.panel.bg[s:theme] })
call s:h("DiffText",      { "fg": s:ayu.fg[s:theme], "bg": s:ayu.ui.panel.bg[s:theme] })

call s:h("ErrorMsg",      { "fg": s:ayu.fg[s:theme], "bg": s:ayu.syntax.error[s:theme] })
call s:h("VertSplit",     { "fg": s:ayu.ui.gridDivider[s:theme] })
call s:h("Folded",        { "fg": s:ayu.ui.fg[s:theme], "bg": s:ayu.ui.panel.bg[s:theme] })
call s:h("FoldColumn",    { "bg": s:ayu.ui.panel.bg[s:theme] })
call s:h("SignColumn",    { "bg": s:ayu.ui.panel.bg[s:theme] })
call s:h("IncSearch",     { "fg": s:ayu.bg[s:theme], "bg": s:ayu.syntax.constant[s:theme] })
call s:h("MatchParen",    { "fg": s:ayu.bg[s:theme], "bg": s:ayu.accent[s:theme] })
call s:h("ModeMsg",       { "fg": s:ayu.syntax.string[s:theme] })
call s:h("MoreMsg",       { "fg": s:ayu.syntax.string[s:theme] })
call s:h("NonText",       { "fg": s:ayu.bg[s:theme] })
call s:h("Pmenu",         { "fg": s:ayu.fg[s:theme], "bg": s:ayu.syntax.selection[s:theme] })
call s:h("PmenuSel",      { "fg": s:ayu.fg[s:theme], "bg": s:ayu.syntax.selection[s:theme], "gui": "reverse", "cterm": "reverse" })
call s:h("PmenuSbar",     { "fg": s:ayu.ui.scrollbar[s:theme] })
call s:h("PmenuThumb",    { "fg": s:ayu.ui.scrollbar[s:theme] })
call s:h("Question",      { "fg": s:ayu.syntax.string[s:theme] })
call s:h("Search",        { "fg": s:ayu.bg[s:theme], "bg": s:ayu.syntax.constant[s:theme] })
call s:h("SpecialKey",    { "fg": s:ayu.syntax.selection[s:theme] })
call s:h("StatusLine",    { "fg": s:ayu.fg[s:theme], "bg": s:ayu.ui.panel.bg[s:theme] })
call s:h("StatusLineNC",  { "fg": s:ayu.fg[s:theme], "bg": s:ayu.ui.panel.bg[s:theme] })
call s:h("TabLine",       { "fg": s:ayu.ui.fg[s:theme], "bg": s:ayu.ui.panel.bg[s:theme] })
call s:h("TabLineFill",   { "bg": s:ayu.syntax.lineHg[s:theme] })
call s:h("TabLineSel",    { "fg": s:ayu.accent[s:theme], "bg": s:ayu.bg[s:theme] })
call s:h("Title",         { "fg": s:ayu.syntax.keyword[s:theme] })
call s:h("Visual",        { "bg": s:ayu.syntax.selection[s:theme] })
call s:h("WarningMsg",    { "fg": s:ayu.syntax.error[s:theme] })
call s:h("WildMenu",      { "fg": s:ayu.bg[s:theme], "bg": s:ayu.syntax.supVar[s:theme] })

call s:h("Comment",      { "fg": s:ayu.syntax.comment[s:theme], "gui": "italic", "cterm": "italic" })
call s:h("Constant",     { "fg": s:ayu.syntax.constant[s:theme] })
call s:h("String",       { "fg": s:ayu.syntax.string[s:theme] })
call s:h("Identifier",   { "fg": s:ayu.syntax.tag[s:theme] })
call s:h("Function",     { "fg": s:ayu.syntax.func[s:theme] })
call s:h("Statement",    { "fg": s:ayu.syntax.keyword[s:theme] })
call s:h("Operator",     { "fg": s:ayu.syntax.operator[s:theme] })
call s:h("PreProc",      { "fg": s:ayu.syntax.esSpec[s:theme] })
call s:h("Type",         { "fg": s:ayu.syntax.tag[s:theme] })
call s:h("Structure",    { "fg": s:ayu.syntax.esSpec[s:theme] })
call s:h("Special",      { "fg": s:ayu.syntax.esSpec[s:theme] })
call s:h("Delimiter",    { "fg": s:ayu.fg[s:theme] })
call s:h("Underlined",   { "fg": s:ayu.syntax.tag[s:theme], "cterm": "underline" })
call s:h("Error",        { "bg": s:ayu.syntax.error[s:theme] })
call s:h("Todo",         { "fg": s:ayu.syntax.supVar[s:theme] })
call s:h("Quote",        { "fg": s:ayu.syntax.tag[s:theme] })
call s:h("qfLineNr",     { "fg": s:ayu.syntax.keyword[s:theme] })

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

call s:h("rubyInstanceVariable", { "fg": s:ayu.syntax.supVar[s:theme] })
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
