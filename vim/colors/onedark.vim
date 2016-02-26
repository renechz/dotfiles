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

if ! exists("g:onedark_termcolors")
  let g:onedark_termcolors = 256
endif

" not all terminals support italics properly.  If yours does, opt-in.
if ! exists("g:onedark_terminal_italics")
  let g:onedark_terminal_italics = 0
endif

" Colors
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

let s:diff_add    = { "gui": "#43d08a", "cterm": "252", "cterm16": "10" }
let s:diff_change = { "gui": "#e0c285", "cterm": "252", "cterm16": "3" }
let s:diff_delete = { "gui": "#e05252", "cterm": "252", "cterm16": "1" }

if &background == "dark"
  let s:bg             = { "gui": "#282C34", "cterm": "235", "cterm16": "NONE" }
  let s:bg_dark        = { "gui": "#21252b", "cterm": "234", "cterm16": "234" }
  let s:fg             = s:white_dark
  let s:fg3            = { "gui": "#5c6370", "cterm": "240", "cterm16": "240" }
  let s:fg_dark        = { "gui": "#636d83", "cterm": "242", "cterm16": "242" }

  let s:comment        = s:fg3
  let s:cursor         = { "gui": "#528bff", "cterm": "75", "cterm16": "75" }
  let s:visual         = s:black
  let s:line_highlight = s:black_dark

  " Defined in atom's colorscheme but not used here so far. Here for reference
  " let s:fg2 = { "gui": "#828997", "cterm": "244", "cterm16": "244" }
else
  let s:bg             = s:white
  let s:bg_dark        = { "gui": "#e5e5e6", "cterm": "252", "cterm16": "15" }
  let s:fg             = { "gui": "#595c69", "cterm": "236", "cterm16": "236" }
  let s:fg_dark        = { "gui": "#9d9d9f", "cterm": "242", "cterm16": "242" }
  let s:fg3            = { "gui": "#a0a1a7", "cterm": "240", "cterm16" : "240" }
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
  let s:visual         = { "gui": "#ededed", "cterm": "254", "cterm16": "254" }
  let s:line_highlight = { "gui": "#f2f2f2", "cterm": "255", "cterm16": "255" }

  " Defined in atom's colorscheme but not used here so far. Here for reference
  " let s:fg2 = { "gui": "#696c77", "cterm": "240", "cterm16" : "240" }
endif

let s:head_a = s:blue_dark
let s:head_b = s:blue
let s:head_c = s:cyan_dark

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

" common groups ================================================================
" (see `:h w18`)
call s:h("Normal", { "bg": s:bg, "fg": s:fg })
call s:h("Cursor", { "bg": s:cursor, "fg": s:fg })

call s:h("Comment", { "fg": s:comment, "gui": "italic", "cterm": "italic" })

call s:h("Constant", { "fg": s:yellow_dark })
call s:h("String",   { "fg": s:green })
hi! link Character   Constant
hi! link Number      Constant
hi! link Boolean     Constant
hi! link Float       Constant

call s:h("Identifier", { "fg": s:purple })
call s:h("Function",   { "fg": s:blue })

call s:h("Statement", { "fg": s:purple })
hi! link Conditonal   Statement
hi! link Repeat       Statement
hi! link Label        Statement
call s:h("Operator",  { "fg": s:fg })
hi! link Keyword      Statement
hi! link Exception    Statement

call s:h("PreProc", { "fg": s:purple })
hi! link Include    PreProc
hi! link Define     PreProc
hi! link Macro      PreProc
hi! link PreCondit  PreProc

call s:h("Type",         { "fg": s:yellow_dark })
call s:h("StorageClass", { "fg": s:yellow_dark })
hi! link Structure       Type
hi! link Typedef         Type

call s:h("Special",      { "fg": s:cyan})
hi! link SpecialChar     Special
call s:h("Tag",          { "fg": s:red })
hi! link Delimiter       Special
hi! link SpecialComment  Special
hi! link Debug           Special

call s:h("Underlined", { "gui": "underline", "cterm": "underline" })
call s:h("Ignore",     { "fg": s:bg })
call s:h("Todo",       { "fg": s:purple, "gui": "bold,italic", "cterm": "bold,italic" })
call s:h("Error",      { "fg": s:fg, "bg": s:red_dark, "gui": "bold", "cterm": "bold" })

" ui chrome ====================================================================

call s:h("SpecialKey",   { "fg": s:blue })
call s:h("NonText",      { "fg": s:bg_dark })
call s:h("Directory",    { "fg": s:purple })
call s:h("ErrorMsg",     { "fg": s:red_dark })
call s:h("IncSearch",    { "fg": s:bg_dark, "bg": s:red })
call s:h("Search",       { "bg": s:visual })
call s:h("MoreMsg",      { "fg": s:fg_dark, "gui": "bold", "cterm": "bold" })
hi! link ModeMsg MoreMsg
call s:h("LineNr",       { "fg": s:fg_dark })
call s:h("CursorLineNr", { "fg": s:fg })
call s:h("Question",     { "fg": s:red })
call s:h("StatusLine",   { "bg": s:bg_dark, "fg": s:fg })
call s:h("Conceal",      { "fg": s:fg })
call s:h("StatusLineNC", { "bg": s:bg_dark, "fg": s:fg })
call s:h("VertSplit",    { "fg": s:bg_dark })
call s:h("Title",        { "fg": s:blue_dark })
call s:h("Visual",       { "bg": s:visual })
call s:h("WarningMsg",   { "fg": s:yellow_dark })
call s:h("WildMenu",     { "fg": s:fg, "bg": s:bg })

call s:h("Folded",       { "fg": s:fg_dark })
call s:h("FoldColumn",   { "fg": s:bg_dark })

call s:h("DiffAdd",      { "fg": s:diff_add })
call s:h("diffAdded",    { "fg": s:diff_add })
call s:h("DiffDelete",   { "fg": s:diff_delete })
call s:h("diffRemoved",  { "fg": s:diff_delete })
call s:h("DiffChange",   { "fg": s:diff_change })
call s:h("DiffText",     { "fg": s:blue_dark })
call s:h("SignColumn",   { "fg": s:green })

call s:h("Pmenu",        { "fg": s:fg, "bg": s:bg_dark })
call s:h("PmenuSel",     { "fg": s:fg, "bg": s:visual })
call s:h("PmenuSbar",    { "fg": s:fg, "bg": s:bg_dark })
call s:h("PmenuThumb",   { "fg": s:fg, "bg": s:bg_dark })

call s:h("TabLine",      { "fg": s:fg, "bg": s:bg_dark })
call s:h("TabLineSel",   { "fg": s:fg, "bg": s:bg_dark, "gui": "bold", "cterm": "bold" })
call s:h("TabLineFill",  { "fg": s:fg, "bg": s:bg_dark })

call s:h("CursorColumn", { "bg": s:line_highlight })
call s:h("CursorLine",   { "bg": s:line_highlight })
call s:h("ColorColumn",  { "bg": s:line_highlight })

if has("gui_running")
  call s:h("SpellRare",  { "gui": "underline", "sp": s:red })
  call s:h("SpellCap",   { "gui": "underline", "sp": s:green })
  call s:h("SpellBad",   { "gui": "underline", "sp": s:red_dark })
  call s:h("SpellLocal", { "gui": "underline", "sp": s:green_dark })
else
  call s:h("SpellRare",  { "cterm": "underline", "fg": s:red })
  call s:h("SpellCap",   { "cterm": "underline", "fg": s:green })
  call s:h("SpellBad",   { "cterm": "underline", "fg": s:red_dark })
  call s:h("SpellLocal", { "cterm": "underline", "fg": s:green_dark })
endif

" remainder of syntax highlighting
call s:h("MatchParen", { "bg": s:bg_dark, "fg": s:fg })
call s:h("qfLineNr",   { "fg": s:fg_dark })

" hi helpHyperTextJump guifg=#5FAFD7 ctermfg=74

" HTML
call s:h("htmlH1",             { "gui": "bold", "cterm": "bold" })
call s:h("htmlH2",             { "gui": "bold", "cterm": "bold" })
call s:h("htmlH3",             { "gui": "bold", "cterm": "bold" })
call s:h("htmlH4",             { "gui": "bold", "cterm": "bold" })
call s:h("htmlH5",             { "gui": "bold", "cterm": "bold" })
call s:h("htmlH6",             { "gui": "bold", "cterm": "bold" })
call s:h("htmlArg",            { "fg": s:yellow })
call s:h("htmlTag",            { "fg": s:fg })
call s:h("htmlTagName",        { "fg": s:red })
call s:h("htmlSpecialTagName", { "fg": s:red })
call s:h("htmlLink",           { "fg": s:blue , "gui": "underline", "cterm": "underline" })
call s:h("htmlItalic",         { "gui": "italic", "cterm": "italic" })
call s:h("htmlBold",           { "gui": "bold", "cterm": "bold" })
call s:h("htmlBoldItalic",     { "gui": "bold,italic", "cterm": "bold" })
hi! link htmlEndTag  htmlTag
hi! link htmlTagN    Keyword

" tpope/vim-markdown
call s:h("markdownBlockquote",        { "fg": s:fg })
call s:h("markdownBold",              { "fg": s:yellow_dark, "gui": "bold", "cterm": "bold" })
call s:h("markdownBoldItalic",        { "fg": s:fg, "gui": "bold,italic", "cterm": "bold" })
call s:h("markdownEscape",            { "fg": s:fg })
call s:h("markdownH1",                { "fg": s:fg, "gui": "bold", "cterm": "bold" })
call s:h("markdownH2",                { "fg": s:fg, "gui": "bold", "cterm": "bold" })
call s:h("markdownH3",                { "fg": s:fg, "gui": "bold", "cterm": "bold" })
call s:h("markdownH4",                { "fg": s:fg, "gui": "bold", "cterm": "bold" })
call s:h("markdownH5",                { "fg": s:fg })
call s:h("markdownH6",                { "fg": s:fg })
call s:h("markdownHeadingDelimiter",  { "fg": s:red })
call s:h("markdownHeadingRule",       { "fg": s:comment })
call s:h("markdownItalic",            { "fg": s:purple, "gui": "italic", "cterm": "italic" })
call s:h("markdownLinkDelimiter",     { "fg": s:purple })
call s:h("markdownLinkText",          { "fg": s:blue })
call s:h("markdownLinkTextDelimiter", { "fg": s:fg })
call s:h("markdownListMarker",        { "fg": s:red })
call s:h("markdownOrderedListMarker", { "fg": s:red })
call s:h("markdownRule",              { "fg": s:fg })
call s:h("markdownUrlTitle",          { "fg": s:fg })
call s:h("markdownCode",              { "fg": s:green })
call s:h("markdownCodeDelimiter",     { "fg": s:green })
call s:h("markdownIdDeclaration",     { "fg": s:fg })
call s:h("markdownId",                { "fg": s:fg_dark })
call s:h("markdownUrl",               { "fg": s:purple, "gui": "underline", "cterm": "underline" })
call s:h("markdownUrlDelimiter",      { "fg": s:purple })
call s:h("markdownUrlTitleDelimiter", { "fg": s:fg_dark })

" plasticboy/vim-markdown
call s:h("mkdBlockQuote",       { "fg": s:fg })
call s:h("mkdLineContinue",     { "fg": s:fg })
call s:h("mkdLink",             { "fg": s:blue })
call s:h("mkdListItem",         { "fg": s:fg })
call s:h("mkdNonListItemBlock", { "fg": s:fg })
call s:h("mkdRule",             { "fg": s:fg })
call s:h("mkdCode",             { "fg": s:fg })
call s:h("mkdIndentCode",       { "fg": s:fg })
call s:h("mkdDelimiter",        { "fg": s:fg_dark })
call s:h("mkdID",               { "fg": s:fg_dark })
call s:h("mkdLinkDef",          { "fg": s:fg_dark })
call s:h("mkdUrl",              { "fg": s:purple, "gui": "underline", "cterm": "underline" })

" gabrielelana/vim-markdown
call s:h("markdownBlockquoteDelimiter", { "fg": s:fg })
call s:h("markdownInlineDelimiter",     { "fg": s:fg })
call s:h("markdownItemDelimiter",       { "fg": s:fg })
call s:h("markdownLinkText",            { "fg": s:blue })
call s:h("markdownFencedCodeBlock",     { "fg": s:fg })
call s:h("markdownInlineCode",          { "fg": s:fg })
call s:h("markdownLinkReference",       { "fg": s:fg_dark })
call s:h("markdownLinkTextContainer",   { "fg": s:fg })
call s:h("markdownLinkUrlContainer",    { "fg": s:purple })
call s:h("markdownLinkUrl",             { "fg": s:purple, "gui": "underline", "cterm": "underline" })

" mattly/vim-markdown-enhancements
call s:h("mmdFootnoteMarker",        { "fg": s:fg })
call s:h("mmdTableAlign",            { "fg": s:fg })
call s:h("mmdTableDelimiter",        { "fg": s:fg })
call s:h("mmdTableHeadDelimiter",    { "fg": s:red })
call s:h("mmdTableHeader",           { "fg": s:fg })
call s:h("mmdTableCaptionDelimiter", { "fg": s:fg })
call s:h("mmdTableCaption",          { "fg": s:fg })
call s:h("mmdFootnoteDelimiter",     { "fg": s:fg_dark })

" XML content
hi! link xmlTag     htmlTag
hi! link xmlEndTag  xmlTag
hi! link xmlTagName htmlTagName

" Signify, git-gutter
hi link SignifySignAdd    LineNr
hi link SignifySignDelete LineNr
hi link SignifySignChange LineNr
call s:h("GitGutterAdd",          { "fg": s:green })
call s:h("GitGutterDelete",       { "fg": s:red })
call s:h("GitGutterChange",       { "fg": s:yellow_dark })
call s:h("GitGutterChangeDelete", { "fg": s:red })

" Ruby
call s:h("rubyAttribute",              { "fg": s:blue })
call s:h("rubyFunction",               { "fg": s:blue })
call s:h("rubyInclude",                { "fg": s:blue })
call s:h("rubyPredefinedConstant",     { "fg": s:yellow_dark })
call s:h("rubySymbol",                 { "fg": s:cyan })
call s:h("rubyStringDelimiter",        { "fg": s:green })
call s:h("rubyRailsARClassMethod",     { "fg": s:blue })
call s:h("rubyInterpolationDelimiter", { "fg": s:red_dark })

" othree/yajs
" othree/javascript-libraries-syntax
call s:h("javascript",                 { "fg": s:blue })
call s:h("javascriptBCollection",      { "fg": s:cyan })
call s:h("javascriptBraces",           { "fg": s:fg })
call s:h("javascriptDateStaticMethod", { "fg": s:red })
call s:h("javascriptDocTags",          { "fg": s:purple })
call s:h("javascriptDocNotation",      { "fg": s:purple })
call s:h("javascriptExport",           { "fg": s:red })
call s:h("javascriptFuncArg",          { "fg": s:fg })
call s:h("javascriptGlobal",           { "fg": s:yellow })
call s:h("javascriptIdentifier",       { "fg": s:red })
call s:h("javascriptIdentifierName",   { "fg": s:cyan })
call s:h("javascriptObjectLabel",      { "fg": s:fg })
call s:h("javascriptPropertyName",     { "fg": s:green })
call s:h("javascriptQDeferred",        { "fg": s:blue })
call s:h("javascriptQMiscellaneous",   { "fg": s:blue })
call s:h("javascriptVariable",         { "fg": s:purple })

" HAML
call s:h("hamlAttributesDelimiter", { "fg": s:fg })
call s:h("hamlAttributesHash",      { "fg": s:yellow_dark })
call s:h("hamlClass",               { "fg": s:red })
call s:h("hamlClassChar",           { "fg": s:red })
call s:h("hamlDocType",             { "fg": s:fg })
call s:h("hamlRubyChar",            { "fg": s:fg })
call s:h("hamlRubyOutputChar",      { "fg": s:fg })
call s:h("hamlTag",                 { "fg": s:fg })

" YAML
call s:h("yamlKeyValueDelimiter", { "fg": s:red })

" css
call s:h("cssBraces",  { "fg": s:fg })
call s:h("cssTagName", { "fg": s:red })

" sass
call s:h("sassAmpersand",  { "fg": s:red })
call s:h("sassClass",      { "fg": s:yellow_dark })
call s:h("sassClassChar",  { "fg": s:yellow_dark })
call s:h("sassDefinition", { "fg": s:yellow_dark })
call s:h("sassVariable",   { "fg": s:red })
