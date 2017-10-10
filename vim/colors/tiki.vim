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
\   "editor": {
\     "bg": { "dark": "#2d2a2e", "light": "#fbfaf9" },
\     "fg": { "dark": "#fcfcfa", "light": "#42322d" },
\   },
\   "ui": {
\     "bg":           { "dark": "#221f22", "light": "#eae1d2" },
\     "fg":           { "dark": "#908e8f", "light": "#b6ad9a" },
\     "pmenu_bg":     { "dark": "#403e41", "light": "#b6ad9a" },
\     "pmenu_fg":     { "dark": "#fcfcfa", "light": "#b6ad9a" },
\     "color_column": { "dark": "#363237", "light": "#f3efe7" },
\     "visual":       { "dark": "#403e41", "light": "#e5ddcb" },
\     "special_key":  { "dark": "#3e3b3f", "light": "#d1cec7" },
\     "line_nr":      { "dark": "#5b595c", "light": "#d1cec7" },
\   },
\   "syntax": {
\     "comment":     { "dark": "#727072", "light": "#b6ad9a" },
\     "punctuation": { "dark": "#939293", "light": "#a27342" },
\     "string":      { "dark": "#ffd866", "light": "#a27342" },
\   },
\   "red":       { "dark": "#ff6188", "light": "#a24342" },
\   "orange":    { "dark": "#fc9867", "light": "#fc9867" },
\   "yellow":    { "dark": "#ffd866", "light": "#896724" },
\   "green":     { "dark": "#a9dc76", "light": "#42a273" },
\   "blue":      { "dark": "#78dce8", "light": "#6182b8" },
\   "purple":    { "dark": "#ab9df2", "light": "#a24271" },
\   "cyan":      { "dark": "#78dce8", "light": "#4271a2" },
\ }

if s:is_dark
  let s:theme = "dark"
  set background=dark
else
  let s:theme = "light"
  set background=light
endif

call s:h("Normal",        { "fg": s:tiki.editor.fg[s:theme], "bg": s:tiki.editor.bg[s:theme] })
call s:h("LineNr",        { "fg": s:tiki.ui.line_nr[s:theme], "bg": s:tiki.editor.bg[s:theme] })
call s:h("FoldColumn",    { "fg": s:tiki.cyan[s:theme] })
call s:h("Folded",        { "fg": s:tiki.ui.fg[s:theme], "bg": s:tiki.ui.bg[s:theme] })
call s:h("MatchParen",    { "fg": s:tiki.red[s:theme], "style": "underline" })
call s:h("SignColumn",    { "bg": s:tiki.ui.bg[s:theme] })
call s:h("Comment",       { "fg": s:tiki.syntax.comment[s:theme], "style": "italic" })
call s:h("Conceal",       { "fg": s:tiki.red[s:theme], "bg": s:tiki.editor.bg[s:theme] })
call s:h("Constant",      { "fg": s:tiki.purple[s:theme] })
call s:h("Error",         { "bg": s:tiki.red[s:theme] })
call s:h("Identifier",    { "fg": s:tiki.cyan[s:theme], "style": "italic" })
call s:h("Ignore",        { "fg": s:tiki.ui.bg[s:theme] })
call s:h("PreProc",       { "fg": s:tiki.red[s:theme] })
call s:h("Special",       { "fg": s:tiki.syntax.punctuation[s:theme] })
call s:h("Statement",     { "fg": s:tiki.red[s:theme] })
call s:h("String",        { "fg": s:tiki.syntax.string[s:theme] })
call s:h("Todo",          { "fg": s:tiki.yellow[s:theme], "bg": "NONE" })
call s:h("Type",          { "fg": s:tiki.cyan[s:theme] })
call s:h("Underlined",    { "fg": s:tiki.purple[s:theme], "style": "underline" })

call s:h("NonText",       { "fg": s:tiki.ui.line_nr[s:theme], "style": "bold" })

call s:h("Pmenu",         { "fg": s:tiki.ui.pmenu_fg[s:theme], "bg": s:tiki.ui.pmenu_bg[s:theme] })
call s:h("PmenuSbar",     { "fg": s:tiki.ui.bg[s:theme], "bg": s:tiki.editor.bg[s:theme] })
call s:h("PmenuSel",      { "fg": s:tiki.yellow[s:theme], "bg": s:tiki.ui.fg[s:theme] })
call s:h("PmenuThumb",    { "fg": s:tiki.cyan[s:theme], "bg": s:tiki.cyan[s:theme] })

call s:h("ErrorMsg",      { "fg": s:tiki.ui.bg[s:theme], "bg": s:tiki.red[s:theme] })
call s:h("ModeMsg",       { "fg": s:tiki.ui.fg[s:theme] })
call s:h("MoreMsg",       { "fg": s:tiki.ui.fg[s:theme] })
call s:h("Question",      { "fg": s:tiki.cyan[s:theme] })
call s:h("WarningMsg",    { "fg": s:tiki.ui.bg[s:theme], "bg": s:tiki.red[s:theme] })

call s:h("TabLine",       { "fg": s:tiki.ui.fg[s:theme], "bg": s:tiki.ui.bg[s:theme], "style": "bold" })
call s:h("TabLineFill",   { "fg": s:tiki.ui.fg[s:theme], "bg": s:tiki.ui.bg[s:theme], "style": "bold" })
call s:h("TabLineSel",    { "fg": s:tiki.ui.fg[s:theme], "bg": s:tiki.ui.bg[s:theme], "style": "bold" })

call s:h("Cursor",        { "fg": s:tiki.ui.bg[s:theme], "bg": s:tiki.ui.fg[s:theme] })
call s:h("CursorColumn",  { "bg": s:tiki.ui.bg[s:theme] })
call s:h("CursorLineNr",  { "fg": s:tiki.yellow[s:theme] })
call s:h("CursorLine",    { "bg": s:tiki.ui.color_column[s:theme], "style": "NONE" })

call s:h("helpLeadBlank", { "fg": s:tiki.ui.fg[s:theme] })
call s:h("helpNormal",    { "fg": s:tiki.ui.fg[s:theme] })

call s:h("StatusLine",    { "fg": s:tiki.ui.fg[s:theme], "bg": s:tiki.ui.bg[s:theme], "style": "NONE" })
call s:h("StatusLineNC",  { "fg": s:tiki.ui.fg[s:theme], "bg": s:tiki.ui.fg[s:theme] })
" Custom StatusLine groups
call s:h("SLBranch",      { "fg": s:tiki.ui.bg[s:theme], "bg": s:tiki.ui.fg[s:theme] })
call s:h("SLCenter",      { "fg": s:tiki.ui.fg[s:theme], "bg": s:tiki.ui.bg[s:theme] })

call s:h("Visual",        { "bg": s:tiki.ui.visual[s:theme] })
call s:h("VisualNOS",     { "bg": s:tiki.ui.fg[s:theme] })

call s:h("VertSplit",     { "fg": s:tiki.ui.bg[s:theme], "style": "reverse" })
call s:h("WildMenu",      { "fg": s:tiki.yellow[s:theme], "bg": s:tiki.ui.fg[s:theme] })

call s:h("Function",      { "fg": s:tiki.green[s:theme] })
call s:h("SpecialKey",    { "fg": s:tiki.ui.special_key[s:theme] })
call s:h("Title",         { "fg": s:tiki.orange[s:theme] })

call s:h("DiffAdd",       { "fg": s:tiki.editor.bg[s:theme], "bg": s:tiki.green[s:theme] })
call s:h("DiffChange",    { "fg": s:tiki.editor.bg[s:theme], "bg": s:tiki.yellow[s:theme] })
call s:h("DiffDelete",    { "fg": s:tiki.editor.bg[s:theme], "bg": s:tiki.red[s:theme] })
call s:h("DiffText",      { "bg": s:tiki.red[s:theme], "style": "bold" })

call s:h("IncSearch",     { "fg": s:tiki.yellow[s:theme], "style": "reverse" })
call s:h("Search",        { "fg": s:tiki.yellow[s:theme], "style": "reverse" })

call s:h("Directory",     { "fg": s:tiki.purple[s:theme] })

call s:h("SpellBad",      { "sp": s:tiki.red[s:theme], "style": "undercurl" })
call s:h("SpellCap",      { "sp": s:tiki.red[s:theme], "style": "undercurl" })
call s:h("SpellLocal",    { "sp": s:tiki.red[s:theme], "style": "undercurl" })
call s:h("SpellRare",     { "sp": s:tiki.red[s:theme], "style": "undercurl" })

call s:h("ColorColumn",   { "bg": s:tiki.ui.color_column[s:theme] })

call s:h("Label",         { "fg": s:tiki.yellow[s:theme] })
call s:h("StorageClass",  { "fg": s:tiki.cyan[s:theme], "style": "italic" })
call s:h("Tag",           { "fg": s:tiki.red[s:theme] })
call s:h("Quote",         { "fg": s:tiki.syntax.punctuation[s:theme] })
call s:h("Noise",         { "fg": s:tiki.syntax.punctuation[s:theme] })

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

call s:h("jsArrowFunction",     { "fg": s:tiki.red[s:theme] })
call s:h("jsFuncArgs",          { "fg": s:tiki.orange[s:theme], "style": "italic" })
call s:h("jsFuncCall",          { "fg": s:tiki.green[s:theme] })
call s:h("jsGlobalNodeObjects", { "fg": s:tiki.green[s:theme] })
call s:h("jsGlobalObjects",     { "fg": s:tiki.cyan[s:theme], "style": "italic" })
call s:h("jsObjectKey",         { "fg": s:tiki.editor.fg[s:theme] })
call s:h("jsNoise",             { "fg": s:tiki.syntax.punctuation[s:theme] })

call s:h("htmlTag",            { "fg": s:tiki.red[s:theme] })
call s:h("htmlEndTag",         { "fg": s:tiki.red[s:theme] })
call s:h("htmlTagName",        { "fg": s:tiki.red[s:theme] })
call s:h("htmlSpecialTagName", { "fg": s:tiki.red[s:theme] })
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

call s:h("pandocAtx",           { "fg": s:tiki.red[s:theme] })
call s:h("pandocAtxStart",      { "fg": s:tiki.red[s:theme] })
call s:h("pandocAtxHeaderMark", { "fg": s:tiki.red[s:theme] })

call s:h("rubyBlockParameter",           { "fg": s:tiki.orange[s:theme], "style": "italic" })
call s:h("rubyBlockParameterList",       { "fg": s:tiki.syntax.punctuation[s:theme] })
call s:h("rubyClass",                    { "fg": s:tiki.red[s:theme] })
call s:h("rubyClassName",                { "fg": s:tiki.cyan[s:theme] })
call s:h("rubyConstant",                 { "fg": s:tiki.cyan[s:theme] })
call s:h("rubyControl",                  { "fg": s:tiki.red[s:theme] })
call s:h("rubyCurlyBlockDelimiter",      { "fg": s:tiki.syntax.punctuation[s:theme] })
call s:h("rubyDefine",                   { "fg": s:tiki.red[s:theme] })
call s:h("rubyEscape",                   { "fg": s:tiki.purple[s:theme] })
call s:h("rubyException",                { "fg": s:tiki.red[s:theme] })
call s:h("rubyFunction",                 { "fg": s:tiki.green[s:theme] })
call s:h("rubyInclude",                  { "fg": s:tiki.red[s:theme] })
call s:h("rubyInstanceVariable",         { "fg": s:tiki.purple[s:theme], "style": "italic" })
call s:h("rubyInterpolationDelimiter",   { "fg": s:tiki.syntax.punctuation[s:theme] })
call s:h("rubyOperator",                 { "fg": s:tiki.red[s:theme] })
call s:h("rubyPredefinedConstant",       { "fg": s:tiki.purple[s:theme] })
call s:h("rubyPseudoVariable",           { "fg": s:tiki.purple[s:theme] })
call s:h("rubyRailsARAssociationMethod", { "fg": s:tiki.cyan[s:theme] })
call s:h("rubyRailsARMethod",            { "fg": s:tiki.cyan[s:theme] })
call s:h("rubyRailsMethod",              { "fg": s:tiki.cyan[s:theme] })
call s:h("rubyRailsRenderMethod",        { "fg": s:tiki.cyan[s:theme] })
call s:h("rubyRailsUserClass",           { "fg": s:tiki.cyan[s:theme], "style": "italic" })
call s:h("rubyRegexp",                   { "fg": s:tiki.yellow[s:theme] })
call s:h("rubyRegexpDelimiter",          { "fg": s:tiki.yellow[s:theme] })
call s:h("rubyStringDelimiter",          { "fg": s:tiki.yellow[s:theme] })
call s:h("rubySymbol",                   { "fg": s:tiki.purple[s:theme] })
hi link rubySharpBang Comment
hi link erubyComment  Comment

call s:h("jsonKeyword",      { "fg": s:tiki.editor.fg[s:theme] })
call s:h("jsonKeywordMatch", { "fg": s:tiki.syntax.punctuation[s:theme] })
call s:h("jsonNumber",       { "fg": s:tiki.purple[s:theme] })
call s:h("yamlAlias",        { "fg": s:tiki.green[s:theme], "style": "italic,underline" })
call s:h("yamlAnchor",       { "fg": s:tiki.cyan[s:theme] })
call s:h("yamlBlock",        { "fg": s:tiki.editor.fg[s:theme] })
call s:h("yamlConstant",     { "fg": s:tiki.purple[s:theme] })
call s:h("yamlKey",          { "fg": s:tiki.red[s:theme] })

" https://github.com/w0rp/ale
call s:h("ALEError",        { "fg": s:tiki.red[s:theme] })
call s:h("ALEErrorSign",    { "bg": s:tiki.ui.bg[s:theme] })
call s:h("ALEInfo",         { "fg": s:tiki.red[s:theme] })
call s:h("ALEStyleError",   { "fg": s:tiki.red[s:theme] })
call s:h("ALEStyleWarning", { "fg": s:tiki.red[s:theme] })
call s:h("ALEWarning",      { "sp": s:tiki.red[s:theme], "style": "undercurl" })
call s:h("ALEWarningSign",  { "bg": s:tiki.ui.bg[s:theme] })
