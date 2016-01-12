" Vim Color File
" Name:       material.vim
" Version:    2.0
" Maintainer: github.com/MaxSt
" License:    The MIT License (MIT)
" Based On: pencil by github.com/reedes and github.com/mattly

hi clear

if exists('syntax on')
  syntax reset
endif

let g:colors_name = 'material'

if ! exists("g:material_termcolors")
  let g:material_termcolors = 256
endif

if ! exists("g:material_dark")
  let g:material_dark = 0
endif

" not all terminals support italics properly.  If yours does, opt-in.
if ! exists("g:material_terminal_italics")
  let g:material_terminal_italics = 0
endif

let s:is_dark=(&background == "dark")

let s:black         = { "gui": "#1a1a1a", "cterm": "234", "cterm16" : "0" }
let s:red           = { "gui": "#FF5370", "cterm": "197", "cterm16": "1" }
let s:dark_red      = { "gui": "#F77669", "cterm": "197", "cterm16": "9" }

let s:orangered     = { "gui": "#FF572D", "cterm": "197", "cterm16": "9" }

let s:green         = { "gui": "#C3E88D", "cterm": "35",  "cterm16": "2" }
let s:dark_green    = { "gui": "#91B859", "cterm": "214", "cterm16": "10" }
let s:light_green   = { "gui": "#D9F5DD", "cterm": "35",  "cterm16": "2" }

let s:yellow        = { "gui": "#FFCB6B", "cterm": "214", "cterm16": "3" }
let s:bright_yellow = { "gui": "#FAD430", "cterm": "214", "cterm16": "11" }
let s:dark_yellow   = { "gui": "#FFCF1B", "cterm": "214", "cterm16": "11" }
let s:darker_yellow = { "gui": "#FF572D", "cterm": "214", "cterm16": "11" }
let s:light_yellow  = { "gui": "#FFEB95", "cterm": "214", "cterm16": "11" }

let s:blue          = { "gui": "#89DDFF", "cterm": "33",  "cterm16": "4" }
let s:dark_blue     = { "gui": "#78CCF0", "cterm": "33",  "cterm16": "12" }

let s:magenta       = { "gui": "#C792EA", "cterm": "56",  "cterm16": "5" }
let s:dark_magenta  = { "gui": "#7986CB", "cterm": "55",  "cterm16": "13" }

let s:cyan          = { "gui": "#80CBC4", "cterm": "116", "cterm16": "6" }
let s:dark_cyan     = { "gui": "#39ADB5", "cterm": "116", "cterm16": "14" }

let s:diff_add_bg    = { "gui": "#eaffea", "cterm": "116", "cterm16": "14" }
let s:diff_change_bg = { "gui": "#F8EEC7", "cterm": "116", "cterm16": "14" }
let s:diff_delete_bg = { "gui": "#ffecec", "cterm": "116", "cterm16": "14" }

if s:is_dark
  if g:material_dark == 1
    let s:base03     = { "gui": "#212121", "cterm": "235", "cterm16" : "NONE" }
    let s:base02     = s:black
    let s:base01     = { "gui": "#313131", "cterm": "236", "cterm16" : "236" }
    let s:base00     = { "gui": "#444444", "cterm": "238", "cterm16" : "238" }
  else
    let s:base03     = { "gui": "#263238", "cterm": "0", "cterm16" : "0" }
    let s:base02     = { "gui": "#1B2327", "cterm": "0", "cterm16" : "235" }
    let s:base01     = { "gui": "#455A64", "cterm": "0", "cterm16" : "238" }
    let s:base00     = { "gui": "#546E7A", "cterm": "0", "cterm16" : "8" }
  end

  let s:base0        = { "gui": "#CDD3DE", "cterm": "251", "cterm16": "7" }
  let s:base1        = { "gui": "#BDBDBD", "cterm": "250", "cterm16" : "250" }
  let s:base2        = { "gui": "#E0E0E0", "cterm": "254", "cterm16" : "254" }
  let s:base3        = { "gui": "#EEEEEE", "cterm": "253", "cterm16" : "253" }
else
  let s:base03       = { "gui": "#FAFAFA", "cterm": "255", "cterm16" : "7" }
  let s:base02       = { "gui": "#F5F5F5", "cterm": "254", "cterm16" : "254" }
  let s:base01       = { "gui": "#EEEEEE", "cterm": "253", "cterm16" : "253" }
  let s:base00       = { "gui": "#B0BEC5", "cterm": "250", "cterm16" : "15" }
  let s:base0        = { "gui": "#757575", "cterm": "243", "cterm16" : "243" }
  let s:base1        = { "gui": "#616161", "cterm": "241", "cterm16" : "8" }
  let s:base2        = { "gui": "#424242", "cterm": "238", "cterm16" : "238" }
  let s:base3        = { "gui": "#212121", "cterm": "235", "cterm16" : "0" }

  let s:_green        = s:green
  let s:_yellow       = s:yellow
  let s:_blue         = s:blue
  let s:_magenta      = s:magenta
  let s:_cyan         = s:cyan

  let s:green        = s:dark_green
  let s:yellow       = s:darker_yellow
  let s:cyan         = s:dark_cyan
  let s:magenta      = s:dark_magenta

  let s:dark_green        = s:_green
  let s:dark_yellow       = s:_yellow
  let s:dark_cyan         = s:_cyan
  let s:dark_magenta      = s:_magenta
endif

let s:head_a = s:blue
let s:head_b = s:magenta
let s:head_c = s:cyan

" shamelessly stolen from hemisu: https://github.com/noahfrederick/vim-hemisu/
function! s:h(group, style)
  " Not all terminals support italics properly. If yours does, opt-in.
  if g:material_terminal_italics == 0 && has_key(a:style, "cterm") && a:style["cterm"] == "italic"
    unlet a:style.cterm
  endif
  if g:material_termcolors == 16
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
"
call s:h("Normal",        { "fg": s:base0, "bg": s:base03 })
if s:is_dark
  set background=dark
else
  set background=light
endif

call s:h("Comment",       { "fg": s:base00 })
call s:h("Constant",      { "fg": s:dark_red })
call s:h("String",        { "fg": s:green })
hi! link Character        Constant

call s:h("Number",        { "fg": s:dark_red })
hi! link Boolean          Number
hi! link Float            Number

call s:h("Identifier",    { "fg": s:magenta })
call s:h("Function",      { "fg": s:blue })

call s:h("Statement",     { "fg": s:magenta })
hi! link Conditonal       Statement
hi! link Repeat           Statement
hi! link Label            Statement
hi! link Keyword          Statement
hi! link Exception        Statement

call s:h("Operator",     { "fg": s:cyan })

call s:h("PreProc",       { "fg": s:red })
hi! link Include          PreProc
hi! link Define           PreProc
hi! link Macro            PreProc
hi! link PreCondit        PreProc

call s:h("Type",          { "fg": s:yellow })
hi! link StorageClass     Type
hi! link Typedef          Type

call s:h("Structure",     { "fg": s:cyan })

call s:h("Special",       { "fg": s:green })
hi! link SpecialChar      Special
hi! link Tag              Special
hi! link Delimiter        Special
hi! link SpecialComment   Special
hi! link Debug            Special

call s:h("Underlined",    { "fg": s:blue })
call s:h("Ignore",        { "fg": s:base0 })
call s:h("Error",         { "fg": s:red, "gui": "bold", "cterm": "bold" })
call s:h("Todo",          { "fg": s:magenta, "gui": "bold", "cterm": "bold" })
call s:h("qfLineNr",      { "fg": s:dark_yellow })

" ui chrome ====================================================================
" `:help hitest.vim`

call s:h("ColorColumn",   { "bg": s:base02 })
hi! link Conceal          ColorColumn
hi! link Cursor           ColorColumn
hi! link CursorIM         ColorColumn
hi! link lCursor          Cursor

call s:h("CursorColumn",  { "bg": s:base02 })
call s:h("CursorLine",    { "bg": s:base02 })
call s:h("LineNr",        { "fg": s:base00 })
call s:h("CursorLineNr",  { "fg": s:base00, "bg": s:base02 })

call s:h("Directory",     { "fg": s:blue })
call s:h("DiffAdd",       { "fg": s:base00, "bg": s:diff_add_bg })
call s:h("DiffChange",    { "fg": s:base00, "bg": s:diff_change_bg })
call s:h("DiffDelete",    { "fg": s:base00, "bg": s:diff_delete_bg })
call s:h("DiffText",      { "fg": s:darker_yellow, "bg": s:diff_change_bg, "gui": "bold", "cterm": "bold" })
call s:h("ErrorMsg",      { "fg": s:base03, "bg": s:red, "gui": "standout", "cterm": "standout" })
call s:h("VertSplit",     { "fg": s:base00, "bg": s:base02 })
call s:h("Folded",        { "fg": s:base01, "bg": s:base02 })
call s:h("FoldColumn",    { "bg": s:base02 })
call s:h("SignColumn",    { "bg": s:base02 })
call s:h("MatchParen",    { "fg": s:base1, "bg": s:base00 })
call s:h("ModeMsg",       { "fg": s:green })
call s:h("MoreMsg",       { "fg": s:green })
call s:h("NonText",       { "fg": s:base00 })
call s:h("Pmenu",         { "fg": s:cyan,  "bg": s:base03 })
call s:h("PmenuSel",      { "fg": s:cyan, "bg": s:base1 })
hi! link PmenuSbar        PmenuSel
hi! link PmenuThumb       PmenuSel

call s:h("Question",      { "fg": s:green })
call s:h("Search",        { "fg": s:base02, "bg": s:yellow })
call s:h("IncSearch",     { "fg": s:base02, "bg": s:yellow })
call s:h("SpecialKey",    { "fg": s:base01 })
call s:h("SpellCap",      { "gui": "underline", "cterm": "underline", "fg": s:blue })
call s:h("SpellLocal",    { "gui": "underline", "cterm": "underline", "fg": s:cyan })
call s:h("SpellBad",      { "gui": "underline", "cterm": "underline", "fg": s:red })
call s:h("SpellRare",     { "gui": "underline", "cterm": "underline", "fg": s:magenta })
call s:h("StatusLine",    { "fg": s:base01, "bg": s:base02, "gui": "reverse", "cterm": "reverse" })
call s:h("StatusLineNC",  { "fg": s:base02, "bg": s:base01, "gui": "reverse", "cterm": "reverse" })
call s:h("TabLine",       { "fg": s:base0, "bg": s:base02,  "gui": "reverse", "cterm": "reverse" })
hi! link TablineFill      Tabline
hi! link TablineSel       Tabline

call s:h("Title",         { "fg": s:dark_yellow })
call s:h("Visual",        { "bg": s:base01 })
hi! link VisualNos        Visual

call s:h("WarningMsg",    { "fg": s:red })
call s:h("WildMenu",      { "fg": s:base2, "bg": s:base02 })

" vim syntax
hi! link vimVar                Identifier
hi! link vimFunc               Function
hi! link vimUserFunc           Function
hi! link helpSpecial           Special
hi! link vimSet                Normal
hi! link vimSetEqual           Normal
call s:h("vimCommentString",   { "fg": s:magenta })
call s:h("vimCommand",         { "fg": s:cyan })
call s:h("vimCmdSep",          { "fg": s:blue })
call s:h("helpExample",        { "fg": s:base1 })
call s:h("helpOption",         { "fg": s:cyan })
call s:h("helpNote",           { "fg": s:dark_magenta })
call s:h("helpVim",            { "fg": s:dark_magenta })
call s:h("helpHyperTextJump",  { "fg": s:blue, "gui": "underline", "cterm": "underline" })
call s:h("helpHyperTextEntry", { "fg": s:green })
call s:h("vimIsCommand",       { "fg": s:cyan })
call s:h("vimSynMtchOpt",      { "fg": s:dark_yellow })
call s:h("vimSynType",         { "fg": s:cyan })
call s:h("vimHiLink",          { "fg": s:blue })
call s:h("vimHiGroup",         { "fg": s:blue })
call s:h("vimGroup",           { "fg": s:blue })

" diff highlighting
hi! link diffAdded Special
hi! link diffLine Identifier

" git & gitcommit highlighting
call s:h("gitcommitComment", { "fg": s:base01, "gui": "italic", "cterm": "italic" })
hi! link gitcommitUntracked gitcommitComment
hi! link gitcommitDiscarded gitcommitComment
hi! link gitcommitSelected  gitcommitComment

call s:h("gitcommitUnmerged", { "fg": s:green, "gui": "bold", "cterm": "bold" })
call s:h("gitcommitOnBranch", { "fg": s:base01, "gui": "bold", "cterm": "bold" })
call s:h("gitcommitBranch",   { "fg": s:dark_magenta, "gui": "bold", "cterm": "bold" })
hi! link gitcommitNoBranch gitcommitBranch

call s:h("gitcommitDiscardedType", { "fg": s:red })
call s:h("gitcommitSelectedType",  { "fg": s:red })
call s:h("gitcommitHeader",        { "fg": s:base01 })
call s:h("gitcommitHeader",        { "fg": s:base01 })
call s:h("gitcommitUntrackedFile", { "fg": s:cyan, "gui": "bold", "cterm": "bold" })
call s:h("gitcommitDiscardedFile", { "fg": s:red, "gui": "bold", "cterm": "bold" })
call s:h("gitcommitSelectedFile",  { "fg": s:green, "gui": "bold", "cterm": "bold" })
call s:h("gitcommitUnmergedFile",  { "fg": s:dark_yellow, "gui": "bold", "cterm": "bold" })
call s:h("gitcommitFile",          { "fg": s:base0, "gui": "bold", "cterm": "bold" })

hi! link gitcommitDiscardedArrow gitcommitDiscardedFile
hi! link gitcommitSelectedArrow  gitcommitSelectedFile
hi! link gitcommitUnmergedArrow  gitcommitUnmergedFile

" CSS syntax
call s:h("cssClassName",      { "fg": s:yellow })
call s:h("cssBraces",         { "fg": s:base0 })
call s:h("cssUnitDecorators", { "fg": s:dark_red })
call s:h("cssColor",          { "fg": s:dark_red })
call s:h("cssBoxProp",        { "fg": s:cyan })
call s:h("sassAmpersand",     { "fg": s:magenta })
call s:h("sassId",            { "fg": s:bright_yellow })
call s:h("sassIdChar",        { "fg": s:bright_yellow })
call s:h("sassVariable",      { "fg": s:red })
call s:h("sassProperty",      { "fg": s:cyan })
hi! link cssCLassNameDot      cssClassName
hi! link sassClass            cssClassName
hi! link sassClassChar        cssClassName
hi! link sassDefinition       cssClassName
hi! link cssDimensionProp     cssBoxProp
hi! link cssFlexibleBoxProp   cssBoxProp
hi! link cssBackgroundProp    cssBoxProp
hi! link cssFontProp          cssBoxProp
hi! link cssPositioningProp   cssBoxProp
hi! link cssTextProp          cssBoxProp

" HTML syntax
call s:h("htmlTag",            { "fg": s:blue })
call s:h("htmlEndTag",         { "fg": s:blue })
call s:h("htmlTagN",           { "fg": s:red })
call s:h("htmlTagName",        { "fg": s:red })
call s:h("htmlSpecialTagName", { "fg": s:red })
call s:h("htmlArg",            { "fg": s:yellow })

" HTML content
call s:h("htmlH1",        { "fg": s:dark_blue, "gui": "bold", "cterm": "bold" })
call s:h("htmlH2",        { "fg": s:dark_blue, "gui": "bold", "cterm": "bold" })
call s:h("htmlH3",        { "fg": s:dark_blue, "gui": "bold", "cterm": "bold" })
call s:h("htmlH4",        { "fg": s:dark_blue, "gui": "bold", "cterm": "bold" })
call s:h("htmlH5",        { "fg": s:dark_blue, "gui": "bold", "cterm": "bold" })
call s:h("htmlH6",        { "fg": s:dark_blue, "gui": "bold", "cterm": "bold" })
call s:h("htmlLink",      { "fg": s:blue, "gui": "underline", "cterm": "underline"})
call s:h("htmlItalic",    { "gui": "italic", "cterm": "italic" })
call s:h("htmlBold",      { "gui": "bold", "cterm": "bold" })
call s:h("htmlBoldItalic",{ "gui": "bold,italic", "cterm": "bold" })

" tpope/vim-markdown
call s:h("markdownBlockquote",          {"fg": s:base0})
call s:h("markdownBold",                {"fg": s:base0  , "gui": "bold"       , "cterm": "bold"  })
call s:h("markdownBoldItalic",          {"fg": s:base0  , "gui": "bold,italic", "cterm": "bold"  })
call s:h("markdownEscape",              {"fg": s:base0})
call s:h("markdownH1",                  {"fg": s:head_a, "gui": "bold,italic", "cterm": "bold"  })
call s:h("markdownH2",                  {"fg": s:head_a, "gui": "bold"       , "cterm": "bold"  })
call s:h("markdownH3",                  {"fg": s:head_a, "gui": "italic"     , "cterm": "italic"})
call s:h("markdownH4",                  {"fg": s:head_a, "gui": "italic"     , "cterm": "italic"})
call s:h("markdownH5",                  {"fg": s:head_a})
call s:h("markdownH6",                  {"fg": s:head_a})
call s:h("markdownHeadingDelimiter",    {"fg": s:base0})
call s:h("markdownHeadingRule",         {"fg": s:base0})
call s:h("markdownId",                  {"fg": s:base00})
call s:h("markdownIdDeclaration",       {"fg": s:base1 })
call s:h("markdownItalic",              {"fg": s:base0  , "gui": "italic"     , "cterm": "italic"})
call s:h("markdownLinkDelimiter",       {"fg": s:base00})
call s:h("markdownLinkText",            {"fg": s:base0})
call s:h("markdownLinkTextDelimiter",   {"fg": s:base00})
call s:h("markdownListMarker",          {"fg": s:base0})
call s:h("markdownOrderedListMarker",   {"fg": s:base0})
call s:h("markdownRule",                {"fg": s:base0})
call s:h("markdownUrl",                 {"fg": s:base00, "gui": "underline", "cterm": "underline"})
call s:h("markdownUrlDelimiter",        {"fg": s:base00})
call s:h("markdownUrlTitle",            {"fg": s:base0})
call s:h("markdownUrlTitleDelimiter",   {"fg": s:base00})
call s:h("markdownCode",                {"fg": s:base0})
call s:h("markdownCodeDelimiter",       {"fg": s:base0})

" plasticboy/vim-markdown
call s:h("mkdBlockQuote",               {"fg": s:base0})
call s:h("mkdDelimiter",                {"fg": s:base00})
call s:h("mkdID",                       {"fg": s:base00})
call s:h("mkdLineContinue",             {"fg": s:base0})
call s:h("mkdLink",                     {"fg": s:base0})
call s:h("mkdLinkDef",                  {"fg": s:base00})
call s:h("mkdListItem",                 {"fg": s:base0})
call s:h("mkdNonListItemBlock",         {"fg": s:base0})  " bug in syntax?
call s:h("mkdRule",                     {"fg": s:base0})
call s:h("mkdUrl",                      {"fg": s:base00, "gui": "underline", "cterm": "underline"})
call s:h("mkdCode",                     {"fg": s:base0})
call s:h("mkdIndentCode",               {"fg": s:base0})

" gabrielelana/vim-markdown
call s:h("markdownBlockquoteDelimiter", {"fg": s:base0})
call s:h("markdownInlineDelimiter",     {"fg": s:base0})
call s:h("markdownItemDelimiter",       {"fg": s:base0})
call s:h("markdownLinkReference",       {"fg": s:base00})
call s:h("markdownLinkText",            {"fg": s:base0})
call s:h("markdownLinkTextContainer",   {"fg": s:base00})
call s:h("markdownLinkUrl",             {"fg": s:base00, "gui": "underline", "cterm": "underline"})
call s:h("markdownLinkUrlContainer",    {"fg": s:base00})
call s:h("markdownFencedCodeBlock",     {"fg": s:base0})
call s:h("markdownInlineCode",          {"fg": s:base0})

" mattly/vim-markdown-enhancements
call s:h("mmdFootnoteDelimiter",        {"fg": s:base00})
call s:h("mmdFootnoteMarker",           {"fg": s:base0})
call s:h("mmdTableAlign",               {"fg": s:base0})
call s:h("mmdTableDelimiter",           {"fg": s:base0})
call s:h("mmdTableHeadDelimiter",       {"fg": s:base0})
call s:h("mmdTableHeader",              {"fg": s:base0})
call s:h("mmdTableCaptionDelimiter",    {"fg": s:base0})
call s:h("mmdTableCaption",             {"fg": s:base0})

" Textile content
" https://github.com/timcharper/textile.vim/blob/master/syntax/textile.vim
"call s:h("txtBold",                {"fg": s:base0  , "gui": "bold"       , "cterm": "bold"  })
"call s:h("txtEmphasis",            {"fg": s:base0  , "gui": "italic"     , "cterm": "italic"})

" XML content
hi! link xmlTag                     htmlTag
hi! link xmlEndTag                  xmlTag
hi! link xmlTagName                 htmlTagName

" Signify, git-gutter
hi! link SignifySignAdd             LineNr
hi! link SignifySignDelete          LineNr
hi! link SignifySignChange          LineNr
" call s:h("GitGutterAdd",{"bg": s:bg_subtle, "fg": s:green})
" call s:h("GitGutterDelete",{"bg": s:bg_subtle, "fg": s:red})
" call s:h("GitGutterChange",{"bg": s:bg_subtle, "fg": s:dark_yellow})
" call s:h("GitGutterChangeDelete",{"bg": s:bg_subtle, "fg": s:red})
"

" JavaScript | othree/yajs
call s:h("javascript",                   { "fg": s:blue })
call s:h("javascriptFunctionKey",        { "fg": s:blue })
call s:h("javascriptjQuery",             { "fg": s:blue })
call s:h("javascriptMethod",             { "fg": s:blue })
call s:h("javascriptBModel",             { "fg": s:blue })
call s:h("javascriptBCollection",        { "fg": s:blue })
call s:h("jstBlock",                     { "fg": s:blue })
call s:h("javascriptIdentifierName",     { "fg": s:red })
call s:h("javascriptObjectLabelColon",   { "fg": s:dark_red })
call s:h("javascriptIdentifier",         { "fg": s:yellow })
call s:h("javascriptGlobal",             { "fg": s:yellow })
call s:h("javascriptGlobalObjects",      { "fg": s:dark_yellow })
call s:h("javascriptOperator",           { "fg": s:dark_cyan })
call s:h("javascriptForOperator",        { "fg": s:dark_cyan })
call s:h("javascriptOpSymbol",           { "fg": s:dark_cyan })
call s:h("javascriptDotNotation",        { "fg": s:dark_cyan })
call s:h("javascriptRepeat",             { "fg": s:magenta })
call s:h("javascriptConditional",        { "fg": s:magenta })
call s:h("javascriptFuncKeyword",        { "fg": s:magenta })
call s:h("javascriptObjectLabel",        { "fg": s:green })
call s:h("javascriptMember",             { "fg": s:cyan })
call s:h("javascriptHtmlElemProperties", { "fg": s:cyan })
hi! link javascriptBraces         Normal
hi! link javascriptBoolean        Boolean
hi! link javascriptFunction       Function
hi! link javascriptMethod       Function
hi! link javascriptFuncExp        Function
hi! link javascriptNull           Boolean
hi! link javascriptNumber         Number
hi! link javascriptStatement      Statement
hi! link javascriptVariable       Identifier

" ruby + rails
call s:h("rubySymbol",                   { "fg": s:red })
call s:h("rubyInstanceVariable",         { "fg": s:red })
call s:h("erubyDelimiter",               { "fg": s:red })
call s:h("erubyRailsRenderMethod",       { "fg": s:blue })
call s:h("rubyRailsARMethod",            { "fg": s:blue })
call s:h("rubyRailsARAssociationMethod", { "fg": s:blue })
call s:h("rubyRailsFilterMethod",        { "fg": s:blue })
call s:h("rubyRailsRenderMethod",        { "fg": s:blue })

" json
call s:h("jsonKeyword", { "fg": s:blue })
call s:h("jsonQuote",   { "fg": s:yellow })
