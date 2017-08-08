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
          \ has_key(a:style, "fg")    ? "guifg=" . a:style.fg : ""
          \ has_key(a:style, "bg")    ? "guibg=" . a:style.bg : ""
          \ has_key(a:style, "sp")    ? "guisp=" . a:style.sp : ""
          \ has_key(a:style, "style") ? "gui="   . a:style.style : ""
          \ has_key(a:style, "style") ? "cterm=" . a:style.style : ""
  endif
endfunction

let s:tiki = {
\   "ui_bg":     { "dark": "#151720", "light": "#fafbfd" },
\   "bg0":       { "dark": "#1f222f", "light": "#e8eaf6" },
\   "bg1":       { "dark": "#292d3e", "light": "#d9dced" },
\   "bg2":       { "dark": "#33384d", "light": "#c7cde5" },
\   "bg3":       { "dark": "#3d435d", "light": "#b6bddc" },
\   "bg4":       { "dark": "#474e6c", "light": "#a5add4" },
\   "fg0":       { "dark": "#fbfcfd", "light": "#15171f" },
\   "fg1":       { "dark": "#eaecf5", "light": "#1f222e" },
\   "fg2":       { "dark": "#d9dcec", "light": "#292d3d" },
\   "fg3":       { "dark": "#c8cce4", "light": "#34394c" },
\   "fg4":       { "dark": "#b7bcdc", "light": "#3e445c" },
\   "gray":      { "dark": "#676e95", "light": "#a8b0d5" },
\   "red":       { "dark": "#ff5370", "light": "#e53935" },
\   "pink":      { "dark": "#ff80ab", "light": "#ff5370" },
\   "orange":    { "dark": "#f78c6c", "light": "#f76d47" },
\   "yellow":    { "dark": "#ffcb6b", "light": "#ff6f00" },
\   "green":     { "dark": "#c3e88d", "light": "#91b859" },
\   "blue_pale": { "dark": "#b2ccd6", "light": "#8796b0" },
\   "aqua":      { "dark": "#89ddff", "light": "#39adb5" },
\   "blue":      { "dark": "#82aaff", "light": "#6182b8" },
\   "purple":    { "dark": "#c792ea", "light": "#7c4dff" },
\   "violet":    { "dark": "#bb80b3", "light": "#945eb8" },
\   "brown":     { "dark": "#ab7967", "light": "#ab7967" },
\ }

if s:is_dark
  let s:theme = "dark"
  set background=dark
else
  let s:theme = "light"
  set background=light
endif

call s:h("Normal",        { "fg": s:tiki.fg1[s:theme], "bg": s:tiki.bg0[s:theme] })
call s:h("LineNr",        { "fg": s:tiki.bg4[s:theme], "bg": s:tiki.bg0[s:theme] })
call s:h("FoldColumn",    { "fg": s:tiki.aqua[s:theme] })
call s:h("Folded",        { "fg": s:tiki.aqua[s:theme] })
call s:h("MatchParen",    { "fg": s:tiki.pink[s:theme], "style": "underline" })
call s:h("SignColumn",    { "bg": s:tiki.bg0[s:theme] })
call s:h("Comment",       { "fg": s:tiki.gray[s:theme], "style": "italic" })
call s:h("Conceal",       { "bg": s:tiki.bg3[s:theme] })
call s:h("Constant",      { "fg": s:tiki.purple[s:theme] })
call s:h("Error",         { "fg": s:tiki.pink[s:theme] })
call s:h("Identifier",    { "fg": s:tiki.aqua[s:theme], "style": "italic" })
call s:h("Ignore",        { "fg": s:tiki.bg1[s:theme] })
call s:h("PreProc",       { "fg": s:tiki.pink[s:theme] })
call s:h("Special",       { "fg": s:tiki.fg1[s:theme] })
call s:h("Statement",     { "fg": s:tiki.pink[s:theme] })
call s:h("String",        { "fg": s:tiki.yellow[s:theme] })
call s:h("Todo",          { "fg": s:tiki.red[s:theme] })
call s:h("Type",          { "fg": s:tiki.aqua[s:theme] })
call s:h("Underlined",    { "fg": s:tiki.violet[s:theme], "style": "underline" })

call s:h("NonText",       { "fg": s:tiki.bg4[s:theme], "style": "bold" })

call s:h("Pmenu",         { "fg": s:tiki.fg1[s:theme], "bg": s:tiki.bg1[s:theme] })
call s:h("PmenuSbar",     { "fg": s:tiki.bg3[s:theme], "bg": s:tiki.bg3[s:theme] })
call s:h("PmenuSel",      { "fg": s:tiki.bg1[s:theme], "bg": s:tiki.aqua[s:theme] })
call s:h("PmenuThumb",    { "fg": s:tiki.aqua[s:theme], "bg": s:tiki.aqua[s:theme] })

call s:h("ErrorMsg",      { "fg": s:tiki.bg0[s:theme], "bg": s:tiki.red[s:theme] })
call s:h("ModeMsg",       { "style": "bold" })
call s:h("MoreMsg",       { "style": "bold" })
call s:h("Question",      { "fg": s:tiki.aqua[s:theme] })
call s:h("WarningMsg",    { "fg": s:tiki.bg0[s:theme], "bg": s:tiki.red[s:theme] })

call s:h("TabLine",       { "fg": s:tiki.fg3[s:theme], "bg": s:tiki.bg3[s:theme], "style": "bold" })
call s:h("TabLineFill",   { "fg": s:tiki.fg3[s:theme], "bg": s:tiki.bg3[s:theme], "style": "bold" })
call s:h("TabLineSel",    { "fg": s:tiki.fg3[s:theme], "bg": s:tiki.bg3[s:theme], "style": "bold" })

call s:h("Cursor",        { "fg": s:tiki.bg1[s:theme], "bg": s:tiki.fg1[s:theme] })
call s:h("CursorColumn",  { "bg": s:tiki.bg1[s:theme] })
call s:h("CursorLineNr",  { "fg": s:tiki.yellow[s:theme] })
call s:h("CursorLine",    { "bg": s:tiki.bg1[s:theme] })

call s:h("helpLeadBlank", { "fg": s:tiki.fg3[s:theme] })
call s:h("helpNormal",    { "fg": s:tiki.fg1[s:theme] })

call s:h("StatusLine",    { "fg": s:tiki.aqua[s:theme], "bg": s:tiki.bg4[s:theme], "style": "reverse,bold" })
call s:h("StatusLineNC",  { "fg": s:tiki.bg2[s:theme],  "bg": s:tiki.fg4[s:theme], "style": "reverse" })

call s:h("Visual",        { "bg": s:tiki.bg4[s:theme] })
call s:h("VisualNOS",     { "style": "underline,bold" })

call s:h("VertSplit",     { "fg": s:tiki.ui_bg[s:theme], "style": "reverse" })
call s:h("WildMenu",      { "fg": s:tiki.bg4[s:theme], "bg": s:tiki.aqua[s:theme] })

call s:h("Function",      { "fg": s:tiki.green[s:theme] })
call s:h("SpecialKey",    { "fg": s:tiki.fg4[s:theme] })
call s:h("Title",         { "fg": s:tiki.orange[s:theme] })

call s:h("DiffAdd",       { "fg": s:tiki.bg0[s:theme], "bg": s:tiki.green[s:theme] })
call s:h("DiffChange",    { "fg": s:tiki.bg0[s:theme], "bg": s:tiki.blue_pale[s:theme] })
call s:h("DiffDelete",    { "fg": s:tiki.bg0[s:theme], "bg": s:tiki.red[s:theme] })
call s:h("DiffText",      { "bg": s:tiki.red[s:theme], "style": "bold" })

call s:h("IncSearch",     { "fg": s:tiki.orange[s:theme], "style": "reverse" })
call s:h("Search",        { "fg": s:tiki.bg0[s:theme],  "bg": s:tiki.green[s:theme] })

call s:h("Directory",     { "fg": s:tiki.purple[s:theme] })

call s:h("SpellBad",      { "sp": s:tiki.red[s:theme], "style": "undercurl" })
call s:h("SpellCap",      { "sp": s:tiki.red[s:theme], "style": "undercurl" })
call s:h("SpellLocal",    { "sp": s:tiki.red[s:theme], "style": "undercurl" })
call s:h("SpellRare",     { "sp": s:tiki.red[s:theme], "style": "undercurl" })

call s:h("ColorColumn",   { "bg": s:tiki.bg1[s:theme] })

call s:h("Label",         { "fg": s:tiki.yellow[s:theme] })
call s:h("StorageClass",  { "fg": s:tiki.aqua[s:theme], "style": "italic" })
call s:h("Tag",           { "fg": s:tiki.pink[s:theme] })

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

call s:h("htmlTag",            { "fg": s:tiki.pink[s:theme] })
call s:h("htmlEndTag",         { "fg": s:tiki.pink[s:theme] })
call s:h("htmlTagName",        { "fg": s:tiki.pink[s:theme] })
call s:h("htmlSpecialTagName", { "fg": s:tiki.pink[s:theme] })
call s:h("htmlArg",            { "fg": s:tiki.green[s:theme] })
call s:h("htmlSpecialChar",    { "fg": s:tiki.purple[s:theme] })
call s:h("htmlBold",           { "fg": s:tiki.orange[s:theme], "style": "bold" })
call s:h("htmlItalic",         { "fg": s:tiki.yellow[s:theme], "style": "italic" })
call s:h("htmlH1",             { "fg": s:tiki.purple[s:theme], "style": "bold" })
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

call s:h("rubyBlockParameter",           { "fg": s:tiki.orange[s:theme], "style": "italic" })
call s:h("rubyClass",                    { "fg": s:tiki.pink[s:theme] })
call s:h("rubyClassName",                { "fg": s:tiki.aqua[s:theme] })
call s:h("rubyConstant",                 { "fg": s:tiki.aqua[s:theme], "style": "italic" })
call s:h("rubyControl",                  { "fg": s:tiki.pink[s:theme] })
call s:h("rubyDefine",                   { "fg": s:tiki.pink[s:theme] })
call s:h("rubyEscape",                   { "fg": s:tiki.purple[s:theme] })
call s:h("rubyException",                { "fg": s:tiki.pink[s:theme] })
call s:h("rubyFunction",                 { "fg": s:tiki.green[s:theme] })
call s:h("rubyInclude",                  { "fg": s:tiki.pink[s:theme] })
call s:h("rubyInstanceVariable",         { "fg": s:tiki.purple[s:theme], "style": "italic" })
call s:h("rubyInterpolationDelimiter",   { "fg": s:tiki.pink[s:theme] })
call s:h("rubyOperator",                 { "fg": s:tiki.pink[s:theme] })
call s:h("rubyPredefinedConstant",       { "fg": s:tiki.purple[s:theme] })
call s:h("rubyPseudoVariable",           { "fg": s:tiki.purple[s:theme] })
call s:h("rubyRailsARAssociationMethod", { "fg": s:tiki.aqua[s:theme] })
call s:h("rubyRailsARMethod",            { "fg": s:tiki.aqua[s:theme] })
call s:h("rubyRailsMethod",              { "fg": s:tiki.aqua[s:theme] })
call s:h("rubyRailsRenderMethod",        { "fg": s:tiki.aqua[s:theme] })
call s:h("rubyRailsUserClass",           { "fg": s:tiki.aqua[s:theme], "style": "italic" })
call s:h("rubyRegexp",                   { "fg": s:tiki.yellow[s:theme] })
call s:h("rubyRegexpDelimiter",          { "fg": s:tiki.yellow[s:theme] })
call s:h("rubyStringDelimiter",          { "fg": s:tiki.yellow[s:theme] })
call s:h("rubySymbol",                   { "fg": s:tiki.purple[s:theme] })
hi link rubySharpBang Comment
hi link erubyComment  Comment

call s:h("jsonKeyword",      { "fg": s:tiki.aqua[s:theme] })
call s:h("jsonKeywordMatch", { "fg": s:tiki.pink[s:theme] })
call s:h("jsonNumber",       { "fg": s:tiki.purple[s:theme] })
call s:h("yamlAlias",        { "fg": s:tiki.green[s:theme], "style": "italic,underline" })
call s:h("yamlAnchor",       { "fg": s:tiki.aqua[s:theme] })
call s:h("yamlConstant",     { "fg": s:tiki.purple[s:theme] })
call s:h("yamlKey",          { "fg": s:tiki.aqua[s:theme] })

" https://github.com/w0rp/ale
call s:h("ALEError",        { "fg": s:tiki.red[s:theme], "bg": "#ffa0b0" })
call s:h("ALEErrorSign",    { "bg": "NONE" })
call s:h("ALEInfo",         { "fg": s:tiki.red[s:theme], "bg": "#ffa0b0" })
call s:h("ALEStyleError",   { "fg": s:tiki.red[s:theme], "bg": "#ffa0b0" })
call s:h("ALEStyleWarning", { "fg": s:tiki.red[s:theme], "bg": "#ffa0b0" })
call s:h("ALEWarning",      { "fg": s:tiki.red[s:theme], "style": "underline" })
call s:h("ALEWarningSign",  { "bg": "NONE" })
