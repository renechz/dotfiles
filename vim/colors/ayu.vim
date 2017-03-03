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
          \ "es_spec":      { "hex": "#ffc44c", "cterm": "222" },
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
          \ "es_spec":      { "hex": "#cca37a", "cterm": "10" },
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

call s:h("ColorColumn",   { "bg": s:theme.syntax.gutter_fg })
call s:h("Cursor",        { "bg": s:theme.common.accent })
call s:h("CursorIM",      { "bg": s:theme.common.accent })
call s:h("CursorColumn",  { "bg": s:theme.syntax.line_hg })
call s:h("CursorLine",    { "bg": s:theme.syntax.line_hg })
call s:h("Directory",     { "fg": s:theme.ui.folder.normal })
call s:h("DiffAdd",       { "fg": s:theme.common.bg, "bg": s:theme.syntax.string })
call s:h("DiffChange",    { "fg": s:theme.common.bg, "bg": s:theme.syntax.func })
call s:h("DiffDelete",    { "fg": s:theme.common.bg, "bg": s:theme.syntax.error })
call s:h("DiffText",      { "fg": s:theme.common.bg, "bg": s:theme.common.fg })
call s:h("ErrorMsg",      { "fg": s:theme.syntax.error })
call s:h("VertSplit",     { "fg": s:theme.ui.fg, "bg": s:theme.ui.grid_divider })
call s:h("Folded",        { "fg": s:theme.syntax.active_guide, "bg": s:theme.syntax.stack_guide })
call s:h("FoldColumn",    { "fg": s:theme.syntax.active_guide })
call s:h("SignColumn",    { "bg": s:theme.common.bg, "fg": s:theme.common.fg })
call s:h("IncSearch",     { "fg": s:theme.common.bg, "bg": s:theme.syntax.constant })
call s:h("LineNr",        { "fg": s:theme.syntax.gutter_fg, "bg": s:theme.common.bg })
call s:h("CursorLineNr",  { "fg": s:theme.syntax.gutter_fg, "bg": s:theme.syntax.line_hg })
call s:h("MatchParen",    { "fg": s:theme.common.bg, "bg": s:theme.common.accent })
call s:h("ModeMsg",       { "fg": s:theme.ui.fg })
call s:h("MoreMsg",       { "fg": s:theme.ui.fg })
call s:h("NonText",       { "fg": s:theme.syntax.stack_guide })
call s:h("Pmenu",         { "fg": s:theme.ui.fg, "bg": s:theme.ui.panel.bg })
call s:h("PmenuSel",      { "fg": s:theme.common.accent, "bg": s:theme.syntax.line_hg })
call s:h("PmenuSbar",     { "fg": s:theme.ui.scrollbar.puck })
call s:h("PmenuThumb",    { "fg": s:theme.ui.scrollbar.puck })
call s:h("Question",      { "fg": s:theme.ui.fg })
call s:h("Search",        { "fg": s:theme.common.bg, "bg": s:theme.syntax.constant })
call s:h("SpecialKey",    { "fg": s:theme.syntax.stack_guide })
call s:h("StatusLine",    { "fg": s:theme.ui.fg, "bg": s:theme.ui.panel.bg })
call s:h("StatusLineNC",  { "fg": s:theme.ui.fg, "bg": s:theme.ui.panel.bg, "cterm": "reverse" })
call s:h("TabLine",       { "fg": s:theme.syntax.comment, "bg": s:theme.common.bg })
call s:h("TabLineFill",   { "bg": s:theme.common.bg })
call s:h("TabLineSel",    { "fg": s:theme.syntax.keyword, "bg": s:theme.common.bg })
call s:h("Title",         { "fg": s:theme.common.fg })
call s:h("Visual",        { "bg": s:theme.syntax.selection })
call s:h("WarningMsg",    { "fg": s:theme.syntax.func })
call s:h("WildMenu",      { "fg": s:theme.syntax.tag })

call s:h("Comment",      { "fg": s:theme.syntax.comment, "gui": "italic", "cterm": "italic" })
call s:h("Constant",     { "fg": s:theme.syntax.constant })
call s:h("String",       { "fg": s:theme.syntax.string })
call s:h("Identifier",   { "fg": s:theme.syntax.keyword })
call s:h("Function",     { "fg": s:theme.syntax.func })
call s:h("Statement",    { "fg": s:theme.syntax.keyword })
call s:h("Operator",     { "fg": s:theme.syntax.operator })
call s:h("PreProc",      { "fg": s:theme.syntax.keyword })
call s:h("Type",         { "fg": s:theme.syntax.tag })
call s:h("StorageClass", { "fg": s:theme.syntax.keyword })
call s:h("Special",      { "fg": s:theme.syntax.keyword })
call s:h("SpecialChar",  { "fg": s:theme.syntax.func })
call s:h("Tag",          { "fg": s:theme.syntax.tag })
call s:h("Delimiter",    { "fg": s:theme.common.fg })
call s:h("Underlined",   { "fg": s:theme.syntax.constant, "cterm": "underline" })
call s:h("Error",        { "fg": s:theme.syntax.error })
call s:h("Todo",         { "fg": s:theme.syntax.tag })
call s:h("Quote",        { "fg": s:theme.syntax.tag })

call s:h("cssAttrComma",  { "fg": s:theme.common.fg })
call s:h("cssBraces",     { "fg": s:theme.common.fg })
call s:h("cssClassName",  { "fg": s:theme.syntax.keyword })
call s:h("cssIdentifier", { "fg": s:theme.syntax.keyword })
call s:h("cssTagName",    { "fg": s:theme.syntax.keyword })
call s:h("cssProp",       { "fg": s:theme.syntax.tag })

call s:h("gitcommitComment",       { "fg": s:theme.syntax.comment })
call s:h("gitcommitUnmerged",      { "fg": s:theme.syntax.tag })
call s:h("gitcommitBranch",        { "fg": s:theme.syntax.constant })
call s:h("gitcommitDiscardedType", { "fg": s:theme.syntax.error })
call s:h("gitcommitSelectedType",  { "fg": s:theme.syntax.tag })
call s:h("gitcommitUntrackedFile", { "fg": s:theme.syntax.tag })
call s:h("gitcommitDiscardedFile", { "fg": s:theme.syntax.error })
call s:h("gitcommitSelectedFile",  { "fg": s:theme.syntax.tag })
call s:h("gitcommitUnmergedFile",  { "fg": s:theme.syntax.keyword })
hi link gitcommitNoBranch       gitcommitBranch
hi link gitcommitUntracked      gitcommitComment
hi link gitcommitDiscarded      gitcommitComment
hi link gitcommitSelected       gitcommitComment
hi link gitcommitDiscardedArrow gitcommitDiscardedFile
hi link gitcommitSelectedArrow  gitcommitSelectedFile
hi link gitcommitUnmergedArrow  gitcommitUnmergedFile


call s:h("htmlArg",            { "fg": s:theme.syntax.keyword })
call s:h("htmlEndTag",         { "fg": s:theme.syntax.tag })
call s:h("htmlH1",             { "fg": s:theme.common.fg })
call s:h("htmlSpecialTagName", { "fg": s:theme.syntax.tag })
call s:h("htmlTag",            { "fg": s:theme.syntax.tag })
call s:h("htmlTagName",        { "fg": s:theme.syntax.tag })

call s:h("javaScriptRequire",            { "fg": s:theme.syntax.tag })
call s:h("javaScriptReserved",           { "fg": s:theme.syntax.tag })
call s:h("javascriptDocTags",            { "fg": s:theme.syntax.tag })
call s:h("javascriptFuncArg",            { "fg": s:theme.syntax.constant })
call s:h("javascriptDocNotation",        { "fg": s:theme.syntax.tag })
call s:h("javascriptObjectLabel",        { "fg": s:theme.syntax.func })
call s:h("javascriptPropertyNameString", { "fg": s:theme.syntax.string })
call s:h("javascriptArrowFunc",          { "fg": s:theme.syntax.keyword })
call s:h("javascriptClassExtends",       { "fg": s:theme.syntax.constant })
call s:h("javascriptImport",             { "fg": s:theme.syntax.constant })
call s:h("javascriptExport",             { "fg": s:theme.syntax.constant })
call s:h("javascriptVariable",           { "fg": s:theme.syntax.keyword })
call s:h("javascriptPropertyName",       { "fg": s:theme.syntax.tag })
call s:h("javascriptClassKeyword",       { "fg": s:theme.syntax.tag })
call s:h("javascriptFuncKeyword",        { "fg": s:theme.syntax.keyword })
call s:h("javascriptGlobal",             { "fg": s:theme.syntax.tag })
call s:h("javascriptOpSymbol",           { "fg": s:theme.syntax.keyword })
call s:h("javascriptOpSymbols",          { "fg": s:theme.syntax.keyword })
call s:h("javascriptIdentifierName",     { "fg": s:theme.syntax.func })
call s:h("javascriptMethod",             { "fg": s:theme.syntax.tag })
call s:h("javascriptFuncName",           { "fg": s:theme.syntax.tag })
call s:h("javascriptDocParamName",       { "fg": s:theme.syntax.tag })
call s:h("javascriptProp",               { "fg": s:theme.syntax.tag })
hi link javascriptDotNotation Keyword
hi link javaScriptNull        Boolean

hi link jsonBoolean Boolean

call s:h("rubyClass",                  { "fg": s:theme.syntax.keyword })
call s:h("rubyConstant",               { "fg": s:theme.syntax.tag })
call s:h("rubyInclude",                { "fg": s:theme.syntax.func })
call s:h("rubyInterpolationDelimiter", { "fg": s:theme.syntax.tag })
call s:h("rubyKeywordAsMethod",        { "fg": s:theme.syntax.func })
call s:h("rubyOperator",               { "fg": s:theme.syntax.keyword })
call s:h("rubyStringDelimiter",        { "fg": s:theme.syntax.string })

call s:h("sassFor",        { "fg": s:theme.syntax.tag })
call s:h("sassVariable",   { "fg": s:theme.syntax.constant })
call s:h("sassMedia",      { "fg": s:theme.syntax.tag })
call s:h("sassAmpersand",  { "fg": s:theme.syntax.keyword })
call s:h("sassDefinition", { "fg": s:theme.syntax.tag })
call s:h("sassMediaQuery", { "fg": s:theme.syntax.tag })
call s:h("sassMixinName",  { "fg": s:theme.syntax.tag })
call s:h("sassMixin",      { "fg": s:theme.syntax.tag })
call s:h("sassControl",    { "fg": s:theme.syntax.keyword })
call s:h("sassExtend",     { "fg": s:theme.syntax.constant })
hi link sassClass     cssClassName
hi link sassClassChar cssClassName
hi link sassId        cssIdentifier
hi link sassIdChar    cssIdentifier
hi link sassInclude   PreProc
hi link sassMixing    PreProc

call s:h("vimBracket", { "fg": s:theme.syntax.func })

" https://github.com/tpope/vim-fugitive
hi link diffAdded   DiffAdd
hi link diffRemoved DiffDelete

" https://github.com/w0rp/ale
call s:h("ALEWarningSign", {})
call s:h("ALEErrorSign",   {})
