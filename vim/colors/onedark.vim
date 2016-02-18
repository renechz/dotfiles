" Vim Color File
" Name:       onedark.vim
" Version:    2.0
" Maintainer: github.com/MaxSt
" License:    The MIT License (MIT)
" Based On: pencil by github.com/reedes and github.com/mattly

hi clear

if exists('syntax on')
  syntax reset
endif

let g:colors_name='onedark'

if ! exists("g:onedark_termcolors")
  let g:onedark_termcolors = 256
endif

" not all terminals support italics properly.  If yours does, opt-in.
if ! exists("g:onedark_terminal_italics")
  let g:onedark_terminal_italics = 0
endif

" Colors
let s:black         = { "gui": "#212121", "cterm": "0", "cterm16" : "0" }
let s:medium_gray   = { "gui": "#636e82", "cterm": "243", "cterm16" : "243" }
let s:white         = { "gui": "#F1F1F1", "cterm": "15", "cterm16" : "15" }
let s:actual_white  = { "gui": "#FFFFFF", "cterm": "231", "cterm16" : "231" }
let s:light_black   = { "gui": "#383A42", "cterm": "236", "cterm16" : "236" }
let s:lighter_black = { "gui": "#545454", "cterm": "240", "cterm16" : "240" }

" lighter shadows and darker grays
let s:subtle_black  = { "gui": "#303030", "cterm": "236", "cterm16" : "236" }
let s:light_gray    = { "gui": "#B2B2B2", "cterm": "249", "cterm16" : "249" }
let s:lighter_gray  = { "gui": "#ABB2BF", "cterm": "251", "cterm16" : "7" }

" flat colors:
let s:asphalt        = { "gui": "#282C34", "cterm": "235", "cterm16": "NONE" }
let s:clouds         = { "gui": "#FAFAFA", "cterm": "255", "cterm16": "15" }

let s:dark_asphalt   = { "gui": "#3D4350", "cterm": "234", "cterm16": "0" }
let s:asphalt_subtle = { "gui": "#65737e", "cterm": "236", "cterm16": "8" }

let s:red            = { "gui": "#E06C75", "cterm": "204", "cterm16": "1" }
let s:dark_red       = { "gui": "#BE5046", "cterm": "203", "cterm16": "9" }

let s:green          = { "gui": "#98C379", "cterm": "120", "cterm16": "2" }
let s:dark_green     = { "gui": "#50A14F", "cterm": "119", "cterm16": "10" }

let s:yellow         = { "gui": "#E5C07B", "cterm": "228", "cterm16": "3" }
let s:dark_yellow    = { "gui": "#D19A66", "cterm": "215", "cterm16": "11" }

let s:blue           = { "gui": "#61AFEF", "cterm": "159", "cterm16": "4" }
let s:dark_blue      = { "gui": "#4078F2", "cterm": "75", "cterm16": "12" }

let s:purple         = { "gui": "#C678DD", "cterm": "141", "cterm16": "5" }
let s:dark_purple    = { "gui": "#A626A4", "cterm": "135", "cterm16": "13" }

let s:cyan           = { "gui": "#56B6C2", "cterm": "122", "cterm16": "6" }
let s:dark_cyan      = { "gui": "#0184BC", "cterm": "121", "cterm16": "14" }

let s:clouds_subtle  = { "gui": "#DEDEDE", "cterm": "254", "cterm16": "254" }
let s:dark_clouds    = { "gui": "#eff1f5", "cterm": "252", "cterm16": "15" }

let s:diff_add       = { "gui": "#43d08a", "cterm": "252", "cterm16": "10" }
let s:diff_change    = { "gui": "#e0c285", "cterm": "252", "cterm16": "3" }
let s:diff_delete    = { "gui": "#e05252", "cterm": "252", "cterm16": "1" }

if &background == "dark"
  let s:bg             = s:asphalt
  let s:bg_subtle      = s:asphalt_subtle
  let s:bg_dark        = s:dark_asphalt
  let s:norm           = s:lighter_gray
  let s:norm_subtle    = s:light_gray
  let s:purple         = s:purple
  let s:cyan           = s:cyan
  let s:green          = s:green
  let s:red            = s:red
  let s:visual         = s:bg_dark
  let s:line_highlight = { "gui": "#2B313A", "cterm": "235", "cterm16": "8" }
  let s:comment        = { "gui": "#5c6370", "cterm": "240", "cterm16": "240" }
else
  let s:bg             = s:clouds
  let s:bg_subtle      = s:dark_clouds
  let s:bg_dark        = s:clouds_subtle
  let s:norm           = s:light_black
  let s:norm_subtle    = s:lighter_black
  let s:green          = s:dark_green
  let s:blue           = s:dark_blue
  let s:purple         = s:dark_purple
  let s:cyan           = s:dark_cyan
  let s:red            = s:dark_red
  let s:yellow         = s:dark_yellow
  let s:visual         = { "gui": "#EDEDED", "cterm": "254", "cterm16": "254" }
  let s:line_highlight = s:visual
  let s:comment        = { "gui": "#A0A1A7", "cterm": "240", "cterm16": "240" }
endif

let s:head_a = s:dark_blue
let s:head_b = s:blue
let s:head_c = s:dark_cyan

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
    \ "guifg="   (has_key(a:style, "fg")    ? a:style.fg.gui   : "NONE")
    \ "guibg="   (has_key(a:style, "bg")    ? a:style.bg.gui   : "NONE")
    \ "guisp="   (has_key(a:style, "sp")    ? a:style.sp.gui   : "NONE")
    \ "gui="     (has_key(a:style, "gui")   ? a:style.gui      : "NONE")
    \ "ctermfg=" . l:ctermfg
    \ "ctermbg=" . l:ctermbg
    \ "cterm="   (has_key(a:style, "cterm") ? a:style.cterm    : "NONE")
endfunction

" common groups ================================================================
" (see `:h w18`)

call s:h("Normal",       { "bg": s:bg, "fg": s:norm })
call s:h("Cursor",       { "bg": s:bg_dark, "fg": s:norm })
call s:h("Comment",      { "fg": s:comment, "gui": "italic", "cterm": "italic" })
call s:h("Identifier",   { "fg": s:red })
call s:h("Function",     { "fg": s:blue })
call s:h("Tag",          { "fg": s:red })

call s:h("Constant",     { "fg": s:dark_yellow })
hi! link Character       Constant

call s:h("Keyword",      { "fg": s:purple })
hi! link Operator        Keyword
hi! link StorageClass    Keyword

call s:h("Statement",    { "fg": s:purple })
hi! link Conditonal      Statement
hi! link Repeat          Statement
hi! link Label           Statement
hi! link Exception       Statement

call s:h("PreProc",      { "fg": s:purple })
hi! link Include         PreProc
hi! link Define          PreProc
hi! link Macro           PreProc
hi! link PreCondit       PreProc

call s:h("Type",         { "fg": s:yellow })
hi! link Structure       Type
hi! link Typedef         Type

call s:h("Special",      { "fg": s:cyan})
hi! link SpecialChar     Special
hi! link Delimiter       Special
hi! link SpecialComment  Special
hi! link Debug           Special

call s:h("Ignore",       { "fg": s:bg })
call s:h("Underlined",   { "fg": s:norm, "gui": "underline", "cterm": "underline" })
call s:h("Todo",         { "fg": s:purple, "gui": "bold,italic", "cterm": "bold,italic" })
call s:h("Error",        { "fg": s:actual_white, "bg": s:dark_red, "gui": "bold", "cterm": "bold" })

" ui chrome ====================================================================

call s:h("SpecialKey",   { "fg": s:blue })
call s:h("String",       { "fg": s:yellow })
call s:h("Boolean",      { "fg": s:dark_yellow })
call s:h("Number",       { "fg": s:dark_yellow })
call s:h("Float",        { "fg": s:dark_yellow })
call s:h("NonText",      { "fg": s:bg_dark })
call s:h("Directory",    { "fg": s:purple })
call s:h("ErrorMsg",     { "fg": s:dark_red })
call s:h("IncSearch",    { "bg": s:red, "fg": s:clouds })
call s:h("Search",       { "bg": s:bg_dark })
call s:h("MoreMsg",      { "fg": s:medium_gray, "gui": "bold", "cterm": "bold" })
hi! link ModeMsg MoreMsg
call s:h("LineNr",       { "fg": s:medium_gray })
call s:h("CursorLineNr", { "bg": s:line_highlight, "fg": s:dark_yellow })
call s:h("Question",     { "fg": s:red })
call s:h("StatusLine",   { "bg": s:bg_dark })
call s:h("Conceal",      { "fg": s:norm })
call s:h("StatusLineNC", { "bg": s:bg_dark, "fg": s:medium_gray })
call s:h("VertSplit",    { "fg": s:bg_subtle })
call s:h("Title",        { "fg": s:dark_blue })
call s:h("Visual",       { "bg": s:visual })
call s:h("WarningMsg",   { "fg": s:yellow })
call s:h("WildMenu",     { "fg": s:bg, "bg": s:norm })

call s:h("Folded",       { "fg": s:medium_gray })
call s:h("FoldColumn",   { "fg": s:bg_subtle })

call s:h("DiffAdd",      { "fg": s:diff_add })
call s:h("diffAdded",    { "fg": s:diff_add })
call s:h("DiffDelete",   { "fg": s:diff_delete })
call s:h("diffRemoved",  { "fg": s:diff_delete })
call s:h("DiffChange",   { "fg": s:diff_change })
call s:h("DiffText",     { "fg": s:dark_blue })
call s:h("SignColumn",   { "fg": s:green })

call s:h("Pmenu",        { "fg": s:norm, "bg": s:bg_dark })
call s:h("PmenuSel",     { "fg": s:norm, "bg": s:bg_subtle })
call s:h("PmenuSbar",    { "fg": s:norm, "bg": s:bg_subtle })
call s:h("PmenuThumb",   { "fg": s:norm, "bg": s:bg_subtle })

call s:h("TabLine",      { "fg": s:norm, "bg": s:bg_dark })
call s:h("TabLineSel",   { "fg": s:norm, "bg": s:bg_subtle, "gui": "bold", "cterm": "bold" })
call s:h("TabLineFill",  { "fg": s:norm, "bg": s:bg_dark })

call s:h("CursorColumn", { "bg": s:line_highlight })
call s:h("CursorLine",   { "bg": s:line_highlight })
call s:h("ColorColumn",  { "bg": s:line_highlight })

if has("gui_running")
  call s:h("SpellRare",  { "gui": "underline", "sp": s:red })
  call s:h("SpellCap",   { "gui": "underline", "sp": s:green })
  call s:h("SpellBad",   { "gui": "underline", "sp": s:dark_red })
  call s:h("SpellLocal", { "gui": "underline", "sp": s:dark_green })
else
  call s:h("SpellRare",  { "cterm": "underline", "fg": s:red })
  call s:h("SpellCap",   { "cterm": "underline", "fg": s:green })
  call s:h("SpellBad",   { "cterm": "underline", "fg": s:dark_red })
  call s:h("SpellLocal", { "cterm": "underline", "fg": s:dark_green })
endif

" remainder of syntax highlighting
call s:h("MatchParen", { "bg": s:bg_subtle, "fg": s:norm })
call s:h("qfLineNr",   { "fg": s:medium_gray })

" hi helpHyperTextJump guifg=#5FAFD7 ctermfg=74

" HTML syntax
hi! link htmlTag     Special
hi! link htmlEndTag  htmlTag
hi! link htmlTagN    Keyword

" HTML content
call s:h("htmlH1",         { "fg": s:head_a, "gui": "bold", "cterm": "bold" })
call s:h("htmlH2",         { "fg": s:head_a, "gui": "bold", "cterm": "bold" })
call s:h("htmlH3",         { "fg": s:head_b, "gui": "bold", "cterm": "bold" })
call s:h("htmlH4",         { "fg": s:head_b, "gui": "bold", "cterm": "bold" })
call s:h("htmlH5",         { "fg": s:head_c })
call s:h("htmlH6",         { "fg": s:head_c })
call s:h("htmlTagName",         { "fg": s:red })
call s:h("htmlLink",       { "fg": s:blue , "gui": "underline", "cterm": "underline" })
call s:h("htmlItalic",     { "gui": "italic", "cterm": "italic" })
call s:h("htmlBold",       { "gui": "bold", "cterm": "bold" })
call s:h("htmlBoldItalic", { "gui": "bold,italic", "cterm": "bold" })

" tpope/vim-markdown
call s:h("markdownBlockquote",        { "fg": s:norm })
call s:h("markdownEscape",            { "fg": s:norm })
call s:h("markdownBold",              { "fg": s:norm, "gui": "bold", "cterm": "bold" })
call s:h("markdownBoldItalic",        { "fg": s:norm, "gui": "bold,italic", "cterm": "bold" })
call s:h("markdownH1",                { "fg": s:head_a, "gui": "bold", "cterm": "bold" })
call s:h("markdownH2",                { "fg": s:head_a, "gui": "bold", "cterm": "bold" })
call s:h("markdownH3",                { "fg": s:head_a, "gui": "bold", "cterm": "bold" })
call s:h("markdownH4",                { "fg": s:head_a, "gui": "bold", "cterm": "bold" })
call s:h("markdownH5",                { "fg": s:head_a })
call s:h("markdownH6",                { "fg": s:head_a })
call s:h("markdownHeadingDelimiter",  { "fg": s:norm })
call s:h("markdownHeadingRule",       { "fg": s:norm })
call s:h("markdownLinkText",          { "fg": s:norm })
call s:h("markdownListMarker",        { "fg": s:norm })
call s:h("markdownOrderedListMarker", { "fg": s:norm })
call s:h("markdownRule",              { "fg": s:norm })
call s:h("markdownUrlTitle",          { "fg": s:norm })
call s:h("markdownCode",              { "fg": s:norm })
call s:h("markdownCodeDelimiter",     { "fg": s:norm })
call s:h("markdownItalic",            { "fg": s:norm, "gui": "italic", "cterm": "italic" })
call s:h("markdownIdDeclaration",     { "fg": s:norm_subtle })
call s:h("markdownId",                { "fg": s:medium_gray })
call s:h("markdownLinkDelimiter",     { "fg": s:medium_gray })
call s:h("markdownLinkTextDelimiter", { "fg": s:medium_gray })
call s:h("markdownUrl",               { "fg": s:medium_gray, "gui": "underline",   "cterm": "underline" })
call s:h("markdownUrlDelimiter",      { "fg": s:medium_gray })
call s:h("markdownUrlTitleDelimiter", { "fg": s:medium_gray })

" plasticboy/vim-markdown
call s:h("mkdBlockQuote",       { "fg": s:norm })
call s:h("mkdLineContinue",     { "fg": s:norm })
call s:h("mkdLink",             { "fg": s:norm })
call s:h("mkdListItem",         { "fg": s:norm })
call s:h("mkdNonListItemBlock", { "fg": s:norm })
call s:h("mkdRule",             { "fg": s:norm })
call s:h("mkdCode",             { "fg": s:norm })
call s:h("mkdIndentCode",       { "fg": s:norm })
call s:h("mkdDelimiter",        { "fg": s:medium_gray })
call s:h("mkdID",               { "fg": s:medium_gray })
call s:h("mkdLinkDef",          { "fg": s:medium_gray })
call s:h("mkdUrl",              { "fg": s:medium_gray, "gui": "underline", "cterm": "underline" })

" gabrielelana/vim-markdown
call s:h("markdownBlockquoteDelimiter", { "fg": s:norm })
call s:h("markdownInlineDelimiter",     { "fg": s:norm })
call s:h("markdownItemDelimiter",       { "fg": s:norm })
call s:h("markdownLinkText",            { "fg": s:norm })
call s:h("markdownFencedCodeBlock",     { "fg": s:norm })
call s:h("markdownInlineCode",          { "fg": s:norm })
call s:h("markdownLinkReference",       { "fg": s:medium_gray })
call s:h("markdownLinkTextContainer",   { "fg": s:medium_gray })
call s:h("markdownLinkUrlContainer",    { "fg": s:medium_gray })
call s:h("markdownLinkUrl",             { "fg": s:medium_gray, "gui": "underline", "cterm": "underline" })

" mattly/vim-markdown-enhancements
call s:h("mmdFootnoteMarker",        { "fg": s:norm })
call s:h("mmdTableAlign",            { "fg": s:norm })
call s:h("mmdTableDelimiter",        { "fg": s:norm })
call s:h("mmdTableHeadDelimiter",    { "fg": s:norm })
call s:h("mmdTableHeader",           { "fg": s:norm })
call s:h("mmdTableCaptionDelimiter", { "fg": s:norm })
call s:h("mmdTableCaption",          { "fg": s:norm })
call s:h("mmdFootnoteDelimiter",     { "fg": s:medium_gray })

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
call s:h("GitGutterChange",       { "fg": s:yellow })
call s:h("GitGutterChangeDelete", { "fg": s:red })

" Ruby
call s:h("rubyAttribute",              { "fg": s:blue })
call s:h("rubyFunction",               { "fg": s:blue })
call s:h("rubyInclude",                { "fg": s:blue })
call s:h("rubySymbol",                 { "fg": s:cyan })
call s:h("rubyStringDelimiter",        { "fg": s:yellow })
call s:h("rubyRailsARClassMethod",     { "fg": s:blue })
call s:h("rubyInterpolationDelimiter", { "fg": s:red })

" JavaScript
call s:h("javascriptGlobal",           { "fg": s:yellow })
call s:h("javascriptDocTags",          { "fg": s:purple })
call s:h("javascriptVariable",         { "fg": s:purple })
call s:h("javascriptDocNotation",      { "fg": s:purple })
call s:h("javascriptObjectLabel",      { "fg": s:green })
call s:h("javascriptPropertyName",     { "fg": s:green })
call s:h("javascriptIdentifierName",   { "fg": s:blue })
call s:h("javascriptDateStaticMethod", { "fg": s:red })

" HAML
call s:h("hamlClass",     { "fg": s:red })
call s:h("hamlClassChar", { "fg": s:red })
call s:h("hamlTag",       { "fg": s:red })
