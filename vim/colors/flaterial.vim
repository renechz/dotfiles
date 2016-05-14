" Vim Color File
" Name:       flaterial.vim
" Version:    0.1
" Maintainer: github.com/renechz
" License:    The MIT License (MIT)
" Based On: pencil by github.com/reedes and github.com/mattly

hi clear

if exists('syntax on')
  syntax reset
endif

let g:colors_name = "flaterial"

if !exists("g:flaterial_termcolors")
  let g:flaterial_termcolors = 256
endif

if !exists("g:flaterial_terminal_italics")
  let g:flaterial_terminal_italics = 0
endif

" flaterial colors
let s:alizarin          = { "gui": "#e74c3c", "cterm": "240" }
let s:asbestos          = { "gui": "#7f8c8d", "cterm": "240" }
let s:amethyst          = { "gui": "#9b59b6", "cterm": "240" }
let s:belizehole        = { "gui": "#2980b9", "cterm": "240" }
let s:carrot            = { "gui": "#e67e22", "cterm": "240" }
let s:clouds            = { "gui": "#ecf0f1", "cterm": "240" }
let s:concrete          = { "gui": "#95a5a6", "cterm": "240" }
let s:emerland          = { "gui": "#2ecc71", "cterm": "240" }
let s:greensea          = { "gui": "#16a085", "cterm": "240" }
let s:midnightblue      = { "gui": "#2c3e50", "cterm": "240" }
let s:nephritis         = { "gui": "#27ae60", "cterm": "240" }
let s:orange            = { "gui": "#f39c12", "cterm": "240" }
let s:peterriver        = { "gui": "#3498db", "cterm": "240" }
let s:pomegranate       = { "gui": "#c0392b", "cterm": "240" }
let s:pumpkin           = { "gui": "#d35400", "cterm": "240" }
let s:silver            = { "gui": "#bdc3c7", "cterm": "240" }
let s:sunflower         = { "gui": "#f1c40f", "cterm": "240" }
let s:turqouise         = { "gui": "#1abc9c", "cterm": "240" }
let s:wetasphalt        = { "gui": "#34495e", "cterm": "240" }
let s:wisteria          = { "gui": "#8e44ad", "cterm": "240" }

let s:amber200          = { "gui": "#FFE082", "cterm": "240" }
let s:blue200           = { "gui": "#90CAF9", "cterm": "240" }
let s:bluegrey200       = { "gui": "#B0BEC5", "cterm": "240" }
let s:bluegrey600       = { "gui": "#546E7A", "cterm": "240" }
let s:bluegrey900       = { "gui": "#263238", "cterm": "240" }
let s:brown200          = { "gui": "#BCAAA4", "cterm": "240" }
let s:cyan200           = { "gui": "#80DEEA", "cterm": "240" }
let s:deeporange200     = { "gui": "#FFAB91", "cterm": "240" }
let s:deeppurple200     = { "gui": "#B39DDB", "cterm": "240" }
let s:green200          = { "gui": "#A5D6A7", "cterm": "240" }
let s:grey200           = { "gui": "#EEEEEE", "cterm": "240" }
let s:indigo200         = { "gui": "#9FA8DA", "cterm": "240" }
let s:lightblue200      = { "gui": "#81D4FA", "cterm": "240" }
let s:lightgreen200     = { "gui": "#C5E1A5", "cterm": "240" }
let s:lime200           = { "gui": "#E6EE9C", "cterm": "240" }
let s:orange200         = { "gui": "#FFCC80", "cterm": "240" }
let s:pink200           = { "gui": "#F48FB1", "cterm": "240" }
let s:purple200         = { "gui": "#CE93D8", "cterm": "240" }
let s:red200            = { "gui": "#EF9A9A", "cterm": "240" }
let s:teal200           = { "gui": "#80CBC4", "cterm": "240" }
let s:yellow200         = { "gui": "#FFF59D", "cterm": "240" }

" iterm colors
let s:bg            = s:wetasphalt
let s:fg            = s:grey200
let s:cursor        = s:orange
let s:links         = s:peterriver
let s:selection     = s:lightblue200
let s:selected_text = s:wetasphalt

let s:black       = s:bluegrey900
let s:black_dark  = s:midnightblue

let s:red         = s:red200
let s:red_dark    = s:alizarin

let s:green       = s:lightgreen200
let s:green_dark  = s:emerland

let s:yellow      = s:amber200
let s:yellow_dark = s:orange200

let s:blue        = s:blue200
let s:blue_dark   = s:peterriver

let s:purple      = s:purple200
let s:purple_dark = s:amethyst

let s:cyan        = s:teal200
let s:cyan_dark   = s:turqouise

let s:white       = s:grey200
let s:white_dark  = s:silver

let s:diff_add    = s:green
let s:diff_change = s:purple
let s:diff_delete = s:red

let s:bg_dark     = s:bluegrey900
let s:fg_dark     = s:asbestos

" this is a comment
let s:comment     = s:bluegrey600
let s:line_highlight = s:midnightblue

if &background == "light"
  let s:bg             = s:clouds
  let s:bg_dark        = s:concrete
  let s:fg             = s:wetasphalt
  let s:fg_dark        = s:midnightblue

  let s:black       = s:midnightblue
  let s:black_dark  = s:wetasphalt

  let s:red         = s:alizarin
  let s:red_dark    = s:pomegranate

  let s:green       = s:nephritis
  let s:green_dark  = s:emerland

  let s:yellow      = s:orange
  let s:yellow_dark = s:carrot

  let s:blue        = s:peterriver
  let s:blue_dark   = s:belizehole

  let s:purple      = s:amethyst
  let s:purple_dark = s:wisteria

  let s:cyan        = s:turqouise
  let s:cyan_dark   = s:greensea

  let s:white       = s:clouds
  let s:white_dark  = s:concrete

" this is a comment
  let s:comment        = s:asbestos
  let s:line_highlight = s:silver
endif

" shamelessly stolen from hemisu: https://github.com/noahfrederick/vim-hemisu/
function! s:h(group, style)
  " Not all terminals support italics properly. If yours does, opt-in.
  if g:flaterial_terminal_italics == 0 && has_key(a:style, "cterm") && a:style["cterm"] == "italic"
    unlet a:style.cterm
  endif

  if g:flaterial_termcolors == 16
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

let s:is_dark=(&background == 'dark')

call s:h("Normal", { "bg": s:bg, "fg": s:fg })

if s:is_dark
  set background=dark
else
  set background=light
endif

call s:h("Comment", { "fg": s:comment, "gui": "italic", "cterm": "italic" })

call s:h("Constant", { "fg": s:yellow_dark })
call s:h("String",   { "fg": s:green })
hi! link Character   Constant
hi! link Number      Constant
hi! link Boolean     Constant
hi! link Float       Constant

call s:h("Identifier", { "fg": s:red })
call s:h("Function",   { "fg": s:blue })

call s:h("Statement", { "fg": s:purple })
hi! link Conditonal   Statement
hi! link Repeat       Statement
hi! link Label        Statement
call s:h("Operator",  { "fg": s:fg })
call s:h("Keyword",   { "fg": s:purple })
hi! link Exception    Statement

call s:h("PreProc", { "fg": s:purple })
hi! link Include    PreProc
hi! link Define     PreProc
hi! link Macro      PreProc
hi! link PreCondit  PreProc

call s:h("Type",         { "fg": s:yellow })
call s:h("StorageClass", { "fg": s:yellow })
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
call s:h("Todo",       { "fg": s:purple, "gui": "italic", "cterm": "italic" })
call s:h("Error",      { "fg": s:fg, "bg": s:red_dark, "gui": "bold", "cterm": "bold" })

" ui chrome ====================================================================

call s:h("ColorColumn",  { "bg": s:line_highlight })
call s:h("CursorColumn", { "bg": s:line_highlight })
call s:h("CursorLine",   { "bg": s:line_highlight })
call s:h("Conceal",      { "fg": s:fg })
call s:h("Cursor",       { "bg": s:cursor, "fg": s:black })
call s:h("Directory",    { "fg": s:fg })
call s:h("DiffAdd",      { "fg": s:diff_add })
call s:h("diffAdded",    { "fg": s:diff_add })
call s:h("DiffChange",   { "fg": s:diff_change })
call s:h("DiffDelete",   { "fg": s:diff_delete })
call s:h("diffRemoved",  { "fg": s:diff_delete })
call s:h("DiffText",     { "fg": s:blue_dark })
call s:h("ErrorMsg",     { "fg": s:red_dark })
call s:h("VertSplit",    { "fg": s:bg_dark })
call s:h("Folded",       { "fg": s:fg_dark })
call s:h("FoldColumn",   { "fg": s:bg_dark })
call s:h("SignColumn",   { "fg": s:green })
call s:h("IncSearch",    { "bg": s:red, "fg": s:bg })
call s:h("LineNr",       { "fg": s:comment })
call s:h("CursorLineNr", { "bg": s:line_highlight, "fg": s:comment })
call s:h("MatchParen",   { "bg": s:cursor, "fg": s:bg })
call s:h("ModeMsg",      { "fg": s:fg_dark, "gui": "bold", "cterm": "bold" })
call s:h("MoreMsg",      { "fg": s:fg_dark, "gui": "bold", "cterm": "bold" })
call s:h("NonText",      { "fg": s:bg_dark })
call s:h("Pmenu",        { "fg": s:fg, "bg": s:bg_dark })
call s:h("PmenuSel",     { "fg": s:fg, "bg": s:selection })
call s:h("PmenuSbar",    { "fg": s:fg, "bg": s:bg_dark })
call s:h("PmenuThumb",   { "fg": s:fg, "bg": s:bg_dark })
call s:h("Question",     { "fg": s:red })
call s:h("Search",       { "bg": s:yellow, "fg": s:bg })
call s:h("SpecialKey",   { "fg": s:blue })
call s:h("StatusLine",   { "bg": s:bg_dark, "fg": s:fg })
call s:h("StatusLineNC", { "bg": s:bg_dark, "fg": s:fg })
call s:h("TabLine",      { "fg": s:fg, "bg": s:bg_dark })
call s:h("TabLineFill",  { "fg": s:fg, "bg": s:bg_dark })
call s:h("TabLineSel",   { "fg": s:fg, "bg": s:bg_dark, "gui": "bold", "cterm": "bold" })
call s:h("Title",        { "fg": s:blue_dark })
call s:h("Visual",       { "bg": s:selection, "fg": s:selected_text })
call s:h("WarningMsg",   { "fg": s:yellow_dark })
call s:h("WildMenu",     { "fg": s:fg, "bg": s:bg })

if has("gui_running")
  call s:h("SpellBad",   { "gui": "underline", "sp": s:red_dark })
  call s:h("SpellCap",   { "gui": "underline", "sp": s:green })
  call s:h("SpellLocal", { "gui": "underline", "sp": s:green_dark })
  call s:h("SpellRare",  { "gui": "underline", "sp": s:red })
else
  call s:h("SpellBad",   { "cterm": "underline", "fg": s:red_dark })
  call s:h("SpellCap",   { "cterm": "underline", "fg": s:green })
  call s:h("SpellLocal", { "cterm": "underline", "fg": s:green_dark })
  call s:h("SpellRare",  { "cterm": "underline", "fg": s:red })
endif

" HTML
call s:h("htmlH1",         { "gui": "bold", "cterm": "bold" })
hi! link htmlH2            htmlH1
hi! link htmlH3            htmlH1
hi! link htmlH4            htmlH1
hi! link htmlH5            htmlH1
hi! link htmlH6            htmlH1
call s:h("htmlArg",        { "fg": s:yellow })
call s:h("htmlTag",        { "fg": s:lightblue200 })
hi! link htmlEndTag         htmlTag
hi! link htmlTagN           Keyword
hi! link htmlTagName        Tag
hi! link htmlSpecialTagName Tag
call s:h("htmlLink",       { "fg": s:blue , "gui": "underline", "cterm": "underline" })
call s:h("htmlItalic",     { "gui": "italic", "cterm": "italic" })
call s:h("htmlBold",       { "gui": "bold", "cterm": "bold" })
call s:h("htmlBoldItalic", { "gui": "bold,italic", "cterm": "bold,italic" })

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

" sheerun/vim-polyglot
call s:h("javascript",                 { "fg": s:blue })
call s:h("javascriptDateStaticMethod", { "fg": s:red })
call s:h("javascriptDocTags",          { "fg": s:purple })
call s:h("javascriptDocNotation",      { "fg": s:purple })
call s:h("javascriptExport",           { "fg": s:red })
call s:h("javascriptGlobal",           { "fg": s:yellow })
call s:h("javascriptIdentifier",       { "fg": s:red })
call s:h("javascriptOpSymbol",         { "fg": s:cyan })
call s:h("javascriptObjectLabelColon", { "fg": s:cyan })
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
call s:h("hamlIdChar",              { "fg": s:red })
call s:h("hamlRubyChar",            { "fg": s:fg })
call s:h("hamlRubyOutputChar",      { "fg": s:fg })
hi! link hamlTag htmlTag

" YAML
call s:h("yamlKeyValueDelimiter", { "fg": s:red })

" css
call s:h("cssAttr",       { "fg": s:red })
call s:h("cssAttrComma",  { "fg": s:purple })
call s:h("cssBraces",     { "fg": s:fg })
call s:h("cssClassName",  { "fg": s:yellow_dark })
call s:h("cssProp",       { "fg": s:cyan })
call s:h("cssTagName",    { "fg": s:red })
hi! link cssClassNameDot cssClassName
hi! link cssValueNumber Number

" sass
call s:h("sassAmpersand",  { "fg": s:purple })
call s:h("sassDefinition", { "fg": s:yellow_dark })
call s:h("sassVariable",   { "fg": s:red })
hi! link sassCssAttribute cssAttr
hi! link sassClass cssClassName
hi! link sassClassChar cssClassName
hi! link sassMixinName cssFunctionName

" elixir
call s:h("elixirInclude",         { "fg": s:blue })
call s:h("elixirAlias",           { "fg": s:yellow_dark })
call s:h("elixirAtom",            { "fg": s:cyan })
call s:h("elixirStringDelimiter", { "fg": s:green })
