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

function! s:h(group, style)
  execute "highlight" a:group
    \ "guifg="   (has_key(a:style, "fg")    ? a:style.fg : "NONE")
    \ "guibg="   (has_key(a:style, "bg")    ? a:style.bg : "NONE")
    \ "guisp="   (has_key(a:style, "sp")    ? a:style.sp : "NONE")
    \ "gui="     (has_key(a:style, "gui")   ? a:style.gui    : "NONE")
    \ "cterm="   (has_key(a:style, "cterm") ? a:style.cterm  : "NONE")
endfunction

let s:ayu  = {
      \ "mirage": {
        \ "common": {
          \ "bg": "#212733",
          \ "fg": "#d9d7ce",
          \ "accent": "#ffcc66"
        \ },
        \ "ui": {
          \ "fg": "#607080",
          \ "grid_divider": "#343d4a",
          \ "folder": { "normal": "#3e4b59" },
          \ "scrollbar": { "puck": "#ffffff" },
          \ "panel": {
            \ "bg": "#272d38",
            \ "shadow": "#11141a",
            \ "path_fg": "#607080",
            \ "row_bg": "#303540"
          \ },
        \ },
        \ "syntax": {
          \ "comment": "#5c6773",
          \ "error": "#ff3333",
          \ "gutter_fg": "#3d4752",
          \ "line_hg": "#242b38",
          \ "selection": "#343f4c",
          \ "stack_guide": "#39434d",
          \ "active_guide": "#606f80",
          \ "tag": "#5ccfe6",
          \ "func": "#ffd580",
          \ "string": "#bae67e",
          \ "regexp": "#95e6cb",
          \ "sup_var": "#f07178",
          \ "keyword": "#ffae57",
          \ "es_spec": "#ffc44c",
          \ "constant": "#d4bfff",
          \ "operator": "#80d4ff"
        \ }
      \ },
      \ "light": {
        \ "common": {
          \ "fg": "#5c6773",
          \ "bg": "#fafafa",
          \ "accent": "#ff6a00"
        \ },
      \ "ui": {
        \ "fg": "#828c99",
        \ "folder": { "normal": "#828c99" },
        \ "scrollbar": { "puck": "#000000" },
        \ "grid_divider": "#e2e4e7",
        \ "panel": {
          \ "bg": "#ffffff",
          \ "shadow": "#a0a0a0",
          \ "path_fg": "#b0bec5",
          \ "row_bg": "#f5f5f5"
        \ },
      \ },
      \ "syntax": {
        \ "error": "#ff3333",
        \ "line_hg": "#f2f2f2",
        \ "gutter_fg": "#d9d8d7",
        \ "selection": "#f0eee4",
        \ "stack_guide": "#dedddc",
        \ "active_guide": "#b3b2b1",
        \ "tag": "#41a6d9",
        \ "func": "#f29718",
        \ "regexp": "#4dbf99",
        \ "string": "#86b300",
        \ "comment": "#abb0b6",
        \ "sup_var": "#f07178",
        \ "es_spec": "#cca37a",
        \ "keyword": "#f2590c",
        \ "operator": "#e7c547",
        \ "constant": "#a37acc"
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

call s:h("Normal",        { "fg": s:theme.common.fg, "bg": s:theme.common.bg })
call s:h("Comment",       { "fg": s:theme.syntax.comment, "gui": "italic", "cterm": "italic" })
call s:h("LineNr",        { "fg": s:theme.syntax.gutter_fg, "bg": s:theme.common.bg })
call s:h("Cursor",        { "bg": s:theme.common.accent })
call s:h("CursorLine",    { "bg": s:theme.syntax.line_hg })
call s:h("CursorLineNr",  { "fg": s:theme.syntax.gutter_fg, "bg": s:theme.syntax.line_hg })
call s:h("CursorColumn",  { "bg": s:theme.syntax.active_guide })
call s:h("ColorColumn",   { "bg": s:theme.syntax.gutter_fg })
call s:h("Directory",     { "fg": s:theme.ui.folder.normal })
call s:h("StatusLine",    { "fg": s:theme.ui.fg, "bg": s:theme.ui.panel.bg })
call s:h("VertSplit",     { "fg": s:theme.ui.fg, "bg": s:theme.ui.grid_divider })
" call s:h("TabLine",       { "fg": s:theme.comment, "bg": s:theme.bg_darker })
" call s:h("TabLineSel",    { "fg": s:theme.bg, "bg": s:theme.green })
" call s:h("TabLineFill",   { "bg": s:theme.bg_darker })
call s:h("Pmenu",         { "fg": s:theme.ui.fg, "bg": s:theme.ui.panel.bg })
call s:h("PmenuSbar",     { "fg": s:theme.ui.scrollbar.puck })
call s:h("PmenuSel",      { "fg": s:theme.common.accent, "bg": s:theme.syntax.line_hg })
" call s:h("PmenuThumb",    { "fg": s:theme.bg_darker, "bg": s:theme.bg_darker })
call s:h("Search",        { "fg": s:theme.common.bg, "bg": s:theme.syntax.constant })
call s:h("IncSearch",        { "fg": s:theme.common.bg, "bg": s:theme.syntax.constant })

call s:h("Title",         { "fg": s:theme.common.fg })
" call s:h("ModeMsg",       { "fg": s:theme.blue })
" call s:h("MoreMsg",       { "fg": s:theme.blue })
" call s:h("Question",      { "fg": s:theme.blue })
call s:h("Quote",      { "fg": s:theme.syntax.tag })

call s:h("Folded",        { "fg": s:theme.syntax.active_guide, "bg": s:theme.syntax.stack_guide })
call s:h("FoldColumn",    { "fg": s:theme.syntax.active_guide })
call s:h("SignColumn",    { "bg": s:theme.common.bg, "fg": s:theme.common.fg })

" call s:h("WildMenu",      { "fg": s:theme.fg, "bg": s:theme.comment })

call s:h("NonText",       { "fg": s:theme.syntax.stack_guide })
call s:h("SpecialKey",    { "fg": s:theme.syntax.stack_guide })
call s:h("Underlined",    { "fg": s:theme.syntax.constant, "cterm": "underline" })
call s:h("WarningMsg",    { "fg": s:theme.syntax.tag })
call s:h("MatchParen",    { "fg": s:theme.common.bg, "bg": s:theme.common.accent })
call s:h("Visual",        { "bg": s:theme.syntax.selection })
call s:h("Error",         { "fg": s:theme.syntax.error })
" call s:h("Todo",          { "fg": s:theme.bg, "bg": s:theme.orange })
call s:h("ErrorMsg",      { "fg": s:theme.syntax.error })

call s:h("Constant",      { "fg": s:theme.syntax.constant })
call s:h("String",        { "fg": s:theme.syntax.string })
call s:h("Character",     { "fg": s:theme.syntax.constant })
call s:h("Number",        { "fg": s:theme.syntax.constant })
" call s:h("Boolean",       { "fg": s:theme.orange })
" call s:h("Float",         { "fg": s:theme.orange })

call s:h("Identifier",    { "fg": s:theme.syntax.keyword })
call s:h("Function",      { "fg": s:theme.syntax.func })

call s:h("Statement",     { "fg": s:theme.syntax.keyword })
" call s:h("Conditional",   { "fg": s:theme.blue })
" call s:h("Repeat",        { "fg": s:theme.blue })
call s:h("Label",         { "fg": s:theme.syntax.tag })
call s:h("Operator",      { "fg": s:theme.syntax.operator })
call s:h("Keyword",       { "fg": s:theme.syntax.keyword })
" call s:h("Exception",     { "fg": s:theme.blue })

call s:h("Special",        { "fg": s:theme.syntax.keyword })
call s:h("SpecialChar",    { "fg": s:theme.syntax.func })
call s:h("Tag",            { "fg": s:theme.syntax.tag })
call s:h("Delimiter",      { "fg": s:theme.common.fg })
" call s:h("SpecialComment", { "fg": s:theme.blue })
" call s:h("Debug",          { "fg": s:theme.blue })

call s:h("PreProc",        { "fg": s:theme.syntax.keyword })
" call s:h("Include",        { "fg": s:theme.magenta })
" call s:h("Define",         { "fg": s:theme.magenta })
" call s:h("Macro",          { "fg": s:theme.magenta })
" call s:h("PreCondit",      { "fg": s:theme.magenta })

call s:h("Type",           { "fg": s:theme.syntax.tag })
call s:h("StorageClass",   { "fg": s:theme.syntax.keyword })
call s:h("Structure",      { "fg": s:theme.syntax.tag })
" call s:h("Typedef",        { "fg": s:theme.cyan })

call s:h("Cursor",         { "bg": s:theme.common.accent })
call s:h("Ignore",         {})
call s:h("Conceal",        {})

call s:h("DiffAdd",        { "fg": s:theme.common.bg, "bg": s:theme.syntax.string })
call s:h("DiffChange",     { "fg": s:theme.common.bg, "bg": s:theme.syntax.func })
call s:h("DiffDelete",     { "fg": s:theme.common.bg, "bg": s:theme.syntax.error })
call s:h("DiffText",       { "fg": s:theme.common.bg, "bg": s:theme.common.fg })

call s:h("SpellBad",       { "fg": s:theme.syntax.error })
call s:h("SpellCap",       { "fg": s:theme.syntax.tag })
call s:h("SpellRare",      { "fg": s:theme.syntax.keyword })
call s:h("SpellLocal",     { "fg": s:theme.syntax.string })

" CSS
" call s:h("cssAttr",              { "fg": s:theme.cyan })
call s:h("cssAttrComma",              { "fg": s:theme.common.fg })
call s:h("cssBraces",              { "fg": s:theme.common.fg })
" call s:h("cssAttributeSelector", { "fg": s:theme.blue })
call s:h("cssClassName",         { "fg": s:theme.syntax.keyword })
call s:h("cssIdentifier",        { "fg": s:theme.syntax.keyword })
call s:h("cssTagName",           { "fg": s:theme.syntax.keyword })
" call s:h("cssDefinition",        { "fg": s:theme.blue })
" call s:h("cssFontDescriptor",    { "fg": s:theme.blue })
" call s:h("cssImportant",         { "fg": s:theme.blue })
" call s:h("cssMediaType",         { "fg": s:theme.cyan })
" call s:h("cssNoise",             { "fg": s:theme.blue })
call s:h("cssProp",              { "fg": s:theme.syntax.tag })
" call s:h("cssPseudoClassId",     { "fg": s:theme.blue })
" call s:h("cssSelectorOp",        { "fg": s:theme.blue })
" call s:h("cssSelectorOp2",       { "fg": s:theme.blue })
" call s:h("cssVendor",            { "fg": s:theme.cyan })
" hi link cssAttrComma  Delimiter

" HTML
call s:h("htmlH1",             { "fg": s:theme.common.fg })
call s:h("htmlTagName",        { "fg": s:theme.syntax.tag })
call s:h("htmlSpecialTagName", { "fg": s:theme.syntax.tag })
call s:h("htmlTag",            { "fg": s:theme.syntax.tag })
call s:h("htmlEndTag",         { "fg": s:theme.syntax.tag })
call s:h("htmlArg",            { "fg": s:theme.syntax.keyword })

" JavaScript
call s:h("javaScriptRequire",    { "fg": s:theme.syntax.tag })
call s:h("javaScriptReserved",   { "fg": s:theme.syntax.tag })
hi link javaScriptNull    Boolean
hi link javaScriptBraces  Delimiter

" https://github.com/othree/yajs.vim
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
" hi link javascriptBraces           Delimiter
" hi link javascriptBrackets         Delimiter
" hi link javascriptComma            Delimiter
hi link javascriptDotNotation      Keyword
" hi link javascriptEndColons        Delimiter
" hi link javascriptParens           Delimiter
" hi link javascriptObjectLabelColon Delimiter

" JSON
hi link jsonBoolean Boolean

" Ruby
" call s:h("rubyAttribute",                 { "fg": s:theme.cyan })
call s:h("rubyClass",                     { "fg": s:theme.syntax.keyword })
" call s:h("rubyBlockParameter",            { "fg": s:theme.blue })
" call s:h("rubyBlockParameterList",        { "fg": s:theme.delimiter })
" call s:h("rubyControl",                   { "fg": s:theme.blue })
call s:h("rubyConstant",                  { "fg": s:theme.syntax.tag })
" call s:h("rubyEval",                      { "fg": s:theme.blue })
" call s:h("rubyGlobalVariable",            { "fg": s:theme.blue })
" call s:h("rubyIncluderubyGlobalVariable", { "fg": s:theme.blue })
" call s:h("rubyInterpolation",             { "fg": s:theme.cyan })
call s:h("rubyInclude",                   { "fg": s:theme.syntax.func })
call s:h("rubyInterpolationDelimiter",    { "fg": s:theme.syntax.tag })
call s:h("rubyKeywordAsMethod",           { "fg": s:theme.syntax.func })
" call s:h("rubyLocalVariableOrMethod",     { "fg": s:theme.blue })
" call s:h("rubyMethodBlock",               { "fg": s:theme.syntax.constant })
" call s:h("rubyModule",                    { "fg": s:theme.blue })
" call s:h("rubyPseudoVariable",            { "fg": s:theme.magenta })
" call s:h("rubyEscape",                    { "fg": s:theme.magenta })
" call s:h("rubyRegexpSpecial",             { "fg": s:theme.magenta })
" call s:h("rubyInstanceVariable",          { "fg": s:theme.magenta })
" call s:h("rubySymbol",                    { "fg": s:theme.magenta })
" call s:h("rubyRegexp",                    { "fg": s:theme.blue })
" call s:h("rubyRegexpCharClass",           { "fg": s:theme.blue })
call s:h("rubyOperator",                  { "fg": s:theme.syntax.keyword })
call s:h("rubyStringDelimiter",           { "fg": s:theme.syntax.string })
" call s:h("rubyStringEscape",              { "fg": s:theme.blue })
hi link RubyCurlyBlockDelimiter  Delimiter

" Sass
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

" neomake/neomake
call s:h("NeomakeWarningSign", { "fg": s:theme.syntax.keyword })
call s:h("NeomakeErrorSign",   { "fg": s:theme.syntax.error })
call s:h("NeomakeInfoSign",    { "fg": s:theme.syntax.tag })

" tpope/vim-fugitive
hi link diffAdded   DiffAdd
hi link diffRemoved DiffDelete

" Git
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
