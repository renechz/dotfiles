" Vim Color File
" Name:       tiki.vim
" Maintainer: https://github.com/renechz/tiki.vim/
" License:    The MIT License (MIT)
" Based On:   https://github.com/MaxSt/FlatColor/

highlight clear

if exists("syntax_on")
  syntax reset
endif

let g:colors_name = "tiki"
let s:is_dark = (&background == "dark")

" originally from vim-hemisu: https://github.com/noahfrederick/vim-hemisu/
function! s:h(group, style)
  if !empty(a:style)
    execute "highlight" a:group
      \ has_key(a:style, "fg")    ? "ctermfg=" . a:style.fg[1] : ""
      \ has_key(a:style, "bg")    ? "ctermbg=" . a:style.bg[1] : ""
      \ has_key(a:style, "fg")    ? "guifg="   . a:style.fg[0] : ""
      \ has_key(a:style, "bg")    ? "guibg="   . a:style.bg[0] : ""
      \ has_key(a:style, "sp")    ? "guisp="   . a:style.sp[0] : ""
      \ has_key(a:style, "style") ? "gui="     . a:style.style : ""
      \ has_key(a:style, "style") ? "cterm="   . a:style.style : ""
      \ has_key(a:style, "style") ? "cterm="   . a:style.style : ""
  endif
endfunction

let s:palette = {
  \   "bg":           ["#2c2525", "NONE"],
  \   "fg":           ["#fff1f3", 7],
  \   "black":        ["#211c1c", 0],
  \   "red":          ["#fd6883", 1],
  \   "green":        ["#adda78", 2],
  \   "yellow":       ["#f9cc6c", 3],
  \   "blue":         ["#c0ddec", 4],
  \   "purple":       ["#a8a9eb", 5],
  \   "cyan":         ["#85dacc", 6],
  \   "white":        ["#c3b7b8", 15],
  \   "orange":       ["#f38d70", 11],
  \   "comment":      ["#72696a", 8],
  \   "colorColumn":  ["#403838", 237],
  \   "cursorLine":   ["#342d2d", 255],
  \   "lineNr":       ["#5b5353", 240],
  \   "visual":       ["#403838", 237],
  \   "statusLineFg": ["#72696a", 246],
  \ }

let s:bg     = s:palette.bg
let s:fg     = s:palette.fg
let s:black  = s:palette.black
let s:red    = s:palette.red
let s:green  = s:palette.green
let s:yellow = s:palette.yellow
let s:blue   = s:palette.blue
let s:purple = s:palette.purple
let s:cyan   = s:palette.cyan
let s:white  = s:palette.white
let s:orange = s:palette.orange
let s:accent = s:palette.yellow
let s:none   = ["NONE", "NONE"]

let s:comment    = s:palette.comment
let s:constant   = s:purple
let s:string     = s:yellow
let s:identifier = s:cyan
let s:function   = s:green
let s:statement  = s:red
let s:label      = s:yellow
let s:preProc    = s:red
let s:type       = s:cyan
let s:special    = s:white
let s:tag        = s:red
let s:underlined = s:purple

let s:colorColumn  = s:palette.colorColumn
let s:cursorLine   = s:palette.cursorLine
let s:statusLineBg = s:palette.black
let s:statusLineFg = s:palette.statusLineFg
let s:lineNr       = s:palette.lineNr
let s:visual       = s:palette.visual
let s:pmenuBg      = s:palette.visual
let s:pmenuFg      = s:white
let s:pmenuSelBg   = s:palette.lineNr

if s:is_dark
  set background=dark
else
  set background=light
  let s:bg     = ["#f1eae8", 255]
  let s:fg     = ["#42322d", 236]
  let s:string = ["#a27342", 131]
  let s:black  = ["#e7dcd8", 253]
  let s:red    = ["#a24342", 131]
  let s:orange = ["#fc9867", 209]
  let s:blue   = ["#a25b42", 131]
  let s:cyan   = ["#a25b42", 131]
  let s:green  = ["#4e2020", 235]
  let s:yellow = s:orange
  let s:purple = s:palette.purple
  let s:white  = s:palette.white
  let s:accent = s:red

  let s:comment    = ["#cbb2a8", 181]
  let s:constant   = s:purple
  let s:identifier = s:cyan
  let s:function   = s:green
  let s:statement  = s:red
  let s:label      = s:yellow
  let s:preProc    = s:red
  let s:type       = s:cyan
  let s:special    = s:comment
  let s:tag        = s:red
  let s:underlined = s:purple

  let s:statusLineBg = s:black
  let s:colorColumn = s:black
endif

call s:h("Normal",        { "fg": s:fg, "bg": s:bg })
call s:h("Comment",       { "fg": s:comment, "style": "italic" })
call s:h("Constant",      { "fg": s:constant })
call s:h("String",        { "fg": s:string })
call s:h("Identifier",    { "fg": s:identifier, "style": "italic" })
call s:h("Function",      { "fg": s:function })
call s:h("Statement",     { "fg": s:statement })
call s:h("Label",         { "fg": s:label })
call s:h("PreProc",       { "fg": s:preProc })
call s:h("Type",          { "fg": s:type })
call s:h("Special",       { "fg": s:special })
call s:h("Tag",           { "fg": s:tag })
call s:h("Underlined",    { "fg": s:underlined, "style": "underline" })
call s:h("Todo",          { "fg": s:accent, "bg": s:none })

call s:h("Cursor",        { "fg": s:black, "bg": s:white })
call s:h("CursorColumn",  { "bg": s:black })
call s:h("CursorLine",    { "bg": s:cursorLine, "style": "NONE" })
call s:h("CursorLineNr",  { "fg": s:white })

call s:h("LineNr",        { "fg": s:lineNr, "bg": s:bg })
call s:h("StatusLine",    { "fg": s:statusLineFg, "bg": s:statusLineBg, "style": "NONE" })
call s:h("StatusLineNC",  { "fg": s:statusLineFg, "bg": s:statusLineBg, "style": "NONE" })
call s:h("SignColumn",    { "bg": s:statusLineBg })

call s:h("TabLine",       { "fg": s:statusLineFg, "bg": s:statusLineBg, "style": "bold" })
call s:h("TabLineFill",   { "fg": s:statusLineFg, "bg": s:statusLineBg, "style": "bold" })
call s:h("TabLineSel",    { "fg": s:accent, "bg": s:visual, "style": "bold" })

call s:h("FoldColumn",    { "fg": s:cyan })
call s:h("Folded",        { "fg": s:fg, "bg": s:visual })

call s:h("MatchParen",    { "fg": s:red, "style": "underline" })
call s:h("Conceal",       { "fg": s:red, "bg": s:bg })
call s:h("Error",         { "bg": s:red })
call s:h("Ignore",        { "fg": s:bg })

call s:h("NonText",       { "fg": s:lineNr, "style": "bold" })

call s:h("Pmenu",         { "fg": s:pmenuFg, "bg": s:pmenuBg })
call s:h("PmenuSbar",     { "fg": s:pmenuFg, "bg": s:pmenuBg })
call s:h("PmenuSel",      { "fg": s:accent, "bg": s:pmenuSelBg })
call s:h("PmenuThumb",    { "fg": s:accent, "bg": s:accent })

call s:h("ErrorMsg",      { "fg": s:black, "bg": s:red })
call s:h("ModeMsg",       { "fg": s:white })
call s:h("MoreMsg",       { "fg": s:white })

call s:h("Question",      { "fg": s:cyan })
call s:h("WarningMsg",    { "fg": s:black, "bg": s:red })

call s:h("helpLeadBlank", { "fg": s:white })
call s:h("helpNormal",    { "fg": s:white })

call s:h("Visual",        { "bg": s:visual })
call s:h("VisualNOS",     { "bg": s:visual })

call s:h("VertSplit",     { "fg": s:statusLineBg, "style": "reverse" })
call s:h("WildMenu",      { "fg": s:accent, "bg": s:pmenuSelBg })

call s:h("SpecialKey",    { "fg": s:lineNr })
call s:h("Title",         { "fg": s:label })

call s:h("DiffAdd",       { "fg": s:bg, "bg": s:green })
call s:h("DiffChange",    { "fg": s:bg, "bg": s:yellow })
call s:h("DiffDelete",    { "fg": s:bg, "bg": s:red })
call s:h("DiffText",      { "bg": s:red, "style": "bold" })

call s:h("IncSearch",     { "fg": s:accent, "style": "reverse" })
call s:h("Search",        { "fg": s:accent, "style": "reverse" })

call s:h("Directory",     { "fg": s:purple })

call s:h("SpellBad",      { "sp": s:red, "style": "undercurl" })
call s:h("SpellCap",      { "sp": s:red, "style": "undercurl" })
call s:h("SpellLocal",    { "sp": s:red, "style": "undercurl" })
call s:h("SpellRare",     { "sp": s:red, "style": "undercurl" })

call s:h("ColorColumn",   { "bg": s:colorColumn })

call s:h("StorageClass",  { "fg": s:cyan, "style": "italic" })
call s:h("Quote",         { "fg": s:comment })
call s:h("Noise",         { "fg": s:comment })

hi link Boolean        Constant
hi link Character      Constant
hi link Conditional    Statement
hi link Debug          Special
hi link Define         Special
hi link Delimiter      Special
hi link Exception      Statement
hi link Float          Number
hi link HelpCommand    Statement
hi link HelpExample    Statement
hi link Include        PreProc
hi link Keyword        Statement
hi link Macro          PreProc
hi link Number         Constant
hi link Operator       Statement
hi link PreCondit      PreProc
hi link Repeat         Statement
hi link SpecialChar    Special
hi link SpecialComment Special
hi link Structure      Type
hi link Typedef        Type

call s:h("jsArrowFunction",     { "fg": s:red })
call s:h("jsFuncArgs",          { "fg": s:orange, "style": "italic" })
call s:h("jsFuncCall",          { "fg": s:green })
call s:h("jsGlobalNodeObjects", { "fg": s:green })
call s:h("jsGlobalObjects",     { "fg": s:cyan, "style": "italic" })
call s:h("jsObjectKey",         { "fg": s:fg })
hi link jsNoise Noise

call s:h("htmlTag",            { "fg": s:red })
call s:h("htmlEndTag",         { "fg": s:red })
call s:h("htmlTagName",        { "fg": s:red })
call s:h("htmlSpecialTagName", { "fg": s:red })
call s:h("htmlArg",            { "fg": s:green })
call s:h("htmlSpecialChar",    { "fg": s:purple })
call s:h("htmlBold",           { "fg": s:orange, "style": "bold" })
call s:h("htmlItalic",         { "fg": s:yellow, "style": "italic" })
call s:h("htmlH1",             { "fg": s:purple, "style": "bold" })
hi link xmlTag     htmlTag
hi link xmlTagName htmlTagName
hi link xmlEndTag  htmlEndTag
hi link xmlAttrib  htmlArg

hi link markdownItalic           PreProc
hi link asciidocQuotedEmphasized PreProc

hi link diffBDiffer   WarningMsg
hi link diffCommon    WarningMsg
hi link diffDiffer    WarningMsg
hi link diffIdentical WarningMsg
hi link diffIsA       WarningMsg
hi link diffNoEOL     WarningMsg
hi link diffOnly      WarningMsg
hi link diffRemoved   WarningMsg
hi link diffAdded     DiffAdd
hi link diffRemoved   DiffDelete

call s:h("rubyBlockParameter",           { "fg": s:orange, "style": "italic" })
call s:h("rubyBlockParameterList",       { "fg": s:comment })
call s:h("rubyClass",                    { "fg": s:red })
call s:h("rubyClassName",                { "fg": s:cyan })
call s:h("rubyConstant",                 { "fg": s:cyan })
call s:h("rubyControl",                  { "fg": s:red })
call s:h("rubyCurlyBlockDelimiter",      { "fg": s:comment })
call s:h("rubyDefine",                   { "fg": s:red })
call s:h("rubyEscape",                   { "fg": s:purple })
call s:h("rubyException",                { "fg": s:red })
call s:h("rubyFunction",                 { "fg": s:green })
call s:h("rubyInclude",                  { "fg": s:red })
call s:h("rubyInstanceVariable",         { "fg": s:blue })
call s:h("rubyInterpolationDelimiter",   { "fg": s:comment })
call s:h("rubyOperator",                 { "fg": s:red })
call s:h("rubyPredefinedConstant",       { "fg": s:purple })
call s:h("rubyPseudoVariable",           { "fg": s:purple })
call s:h("rubyRailsARAssociationMethod", { "fg": s:cyan })
call s:h("rubyRailsARMethod",            { "fg": s:cyan })
call s:h("rubyRailsMethod",              { "fg": s:cyan })
call s:h("rubyRailsRenderMethod",        { "fg": s:cyan })
call s:h("rubyRailsUserClass",           { "fg": s:cyan, "style": "italic" })
call s:h("rubyRegexp",                   { "fg": s:yellow })
call s:h("rubyRegexpDelimiter",          { "fg": s:yellow })
call s:h("rubyStringDelimiter",          { "fg": s:yellow })
call s:h("rubySymbol",                   { "fg": s:blue })
call s:h("rubyEntity",                   { "fg": s:green })
call s:h("rubyEntities",                 { "fg": s:green })
hi link rubyEntity   Function
hi link rubyEntities rubyEntity
hi link rubySharpBang Comment
hi link erubyComment  Comment

call s:h("jsonKeyword",      { "fg": s:fg })
call s:h("jsonKeywordMatch", { "fg": s:comment })
call s:h("jsonNumber",       { "fg": s:purple })
call s:h("yamlAlias",        { "fg": s:green, "style": "italic,underline" })
call s:h("yamlAnchor",       { "fg": s:cyan })
call s:h("yamlBlock",        { "fg": s:fg })
call s:h("yamlConstant",     { "fg": s:purple })
call s:h("yamlKey",          { "fg": s:red })

" https://github.com/w0rp/ale
call s:h("ALEError",        { "fg": s:red })
call s:h("ALEErrorSign",    { "bg": s:black })
call s:h("ALEInfo",         { "fg": s:red })
call s:h("ALEStyleError",   { "fg": s:red })
call s:h("ALEStyleWarning", { "fg": s:red })
call s:h("ALEWarning",      { "sp": s:red, "style": "undercurl" })
call s:h("ALEWarningSign",  { "bg": s:black })
