" Vim Color File
" Name:       duotone.vim
" Maintainer: https://github.com/renechz/duotone.vim/
" License:    The MIT License (MIT)
" Based On:   https://github.com/MaxSt/FlatColor/

highlight clear

if exists("syntax_on")
  syntax reset
endif

let g:colors_name = "duotone"
let s:is_dark = (&background == "dark")

function! s:h(group, style)
  execute "highlight" a:group
    \ "guifg="   (has_key(a:style, "fg")    ? a:style.fg.gui : "NONE")
    \ "guibg="   (has_key(a:style, "bg")    ? a:style.bg.gui : "NONE")
    \ "guisp="   (has_key(a:style, "sp")    ? a:style.sp.gui : "NONE")
    \ "gui="     (has_key(a:style, "gui")   ? a:style.gui    : "NONE")
    \ "cterm="   (has_key(a:style, "cterm") ? a:style.cterm  : "NONE")
endfunction

let s:theme_dark  = {
      \ "red":        { "gui": "#e17a7a" },
      \ "green":      { "gui": "#b8c587" },
      \ "orange":     { "gui": "#e2a578" },
      \ "blue":       { "gui": "#85a0c7" },
      \ "purple":     { "gui": "#a093c8" },
      \ "cyan":       { "gui": "#8ab8c1" },
      \ "fg":         { "gui": "#c2c6d6" },
      \ "bg":         { "gui": "#161821" },
      \ "bg_darker":  { "gui": "#060709" },
      \ "comment":    { "gui": "#353a50" },
      \ "cursorline": { "gui": "#2e3244" },
      \ "delimiter":  { "gui": "#3d435c" },
      \ "visual_fg":  { "gui": "#436493" },
      \ "visual_bg":  { "gui": "#d6dfec" },
      \ }

let s:theme_light  = {
      \ "red":        { "gui": "#a71d5d" },
      \ "green":      { "gui": "#63a35c" },
      \ "orange":     { "gui": "#ed6a43" },
      \ "blue":       { "gui": "#183691" },
      \ "purple":     { "gui": "#795da3" },
      \ "cyan":       { "gui": "#0086b3" },
      \ "fg":         { "gui": "#333333" },
      \ "bg":         { "gui": "#ffffff" },
      \ "bg_darker":  { "gui": "#f7f7f7" },
      \ "comment":    { "gui": "#969896" },
      \ "cursorline": { "gui": "#d8d8d8" },
      \ "delimiter":  { "gui": "#bbbbbb" },
      \ "visual_bg":  { "gui": "#f8eec7" },
      \ "visual_fg":  { "gui": "#333333" },
      \ }

if s:is_dark
  set background=dark
  let s:theme = s:theme_dark
else
  set background=light
  let s:theme = s:theme_light
endif

call s:h("Normal",        { "fg": s:theme.fg, "bg": s:theme.bg })
call s:h("Comment",       { "fg": s:theme.comment, "gui": "italic", "cterm": "italic" })
call s:h("LineNr",        { "fg": s:theme.comment, "bg": s:theme.bg_darker })
call s:h("CursorLine",    { "bg": s:theme.cursorline })
call s:h("CursorLineNr",  { "fg": s:theme.fg })
call s:h("CursorColumn",  { "bg": s:theme.cursorline })
call s:h("ColorColumn",   { "bg": s:theme.cursorline })
call s:h("Directory",     { "fg": s:theme.blue })
call s:h("StatusLine",    { "fg": s:theme.fg, "bg": s:theme.bg_darker })
call s:h("VertSplit",     { "fg": s:theme.delimiter, "bg": s:theme.bg_darker })
call s:h("TabLine",       { "fg": s:theme.comment, "bg": s:theme.bg_darker })
call s:h("TabLineSel",    { "fg": s:theme.bg, "bg": s:theme.green })
call s:h("TabLineFill",   { "bg": s:theme.bg_darker })
call s:h("Pmenu",         { "fg": s:theme.fg, "bg": s:theme.bg_darker })
call s:h("PmenuSbar",     { "fg": s:theme.bg, "bg": s:theme.cursorline })
call s:h("PmenuThumb",    { "fg": s:theme.bg_darker, "bg": s:theme.bg_darker })
call s:h("Search",        { "fg": s:theme.bg, "bg": s:theme.orange })
call s:h("IncSearch",     { "fg": s:theme.bg, "bg": s:theme.orange })

call s:h("Title",         { "fg": s:theme.blue })
call s:h("ModeMsg",       { "fg": s:theme.blue })
call s:h("MoreMsg",       { "fg": s:theme.blue })
call s:h("Question",      { "fg": s:theme.blue })

call s:h("Folded",        { "fg": s:theme.comment, "bg": s:theme.bg_darker })
call s:h("FoldColumn",    { "fg": s:theme.blue })
call s:h("SignColumn",    { "fg": s:theme.cyan })

call s:h("PmenuSel",      { "fg": s:theme.bg, "bg": s:theme.cyan })
call s:h("WildMenu",      { "fg": s:theme.fg, "bg": s:theme.comment })

call s:h("NonText",       { "fg": s:theme.cursorline })
call s:h("SpecialKey",    { "fg": s:theme.comment })
call s:h("Underlined",    { "fg": s:theme.orange, "cterm": "underline" })
call s:h("WarningMsg",    { "fg": s:theme.orange })
call s:h("MatchParen",    { "fg": s:theme.bg, "bg": s:theme.purple })
call s:h("Visual",        { "fg": s:theme.visual_fg, "bg": s:theme.visual_bg })
call s:h("Error",         { "fg": s:theme.red })
call s:h("Todo",          { "fg": s:theme.bg, "bg": s:theme.orange })
call s:h("ErrorMsg",      { "fg": s:theme.red })

call s:h("Constant",      { "fg": s:theme.orange })
call s:h("String",        { "fg": s:theme.cyan })
call s:h("Character",     { "fg": s:theme.orange })
call s:h("Number",        { "fg": s:theme.orange })
call s:h("Boolean",       { "fg": s:theme.orange })
call s:h("Float",         { "fg": s:theme.orange })

call s:h("Identifier",    { "fg": s:theme.cyan })
call s:h("Function",      { "fg": s:theme.cyan })

call s:h("Statement",     { "fg": s:theme.blue })
call s:h("Conditional",   { "fg": s:theme.blue })
call s:h("Repeat",        { "fg": s:theme.blue })
call s:h("Label",         { "fg": s:theme.blue })
call s:h("Operator",      { "fg": s:theme.blue })
call s:h("Keyword",       { "fg": s:theme.blue })
call s:h("Exception",     { "fg": s:theme.blue })

call s:h("Special",        { "fg": s:theme.blue })
call s:h("SpecialChar",    { "fg": s:theme.blue })
call s:h("Tag",            { "fg": s:theme.blue })
call s:h("Delimiter",      { "fg": s:theme.delimiter })
call s:h("SpecialComment", { "fg": s:theme.blue })
call s:h("Debug",          { "fg": s:theme.blue })

call s:h("PreProc",        { "fg": s:theme.purple })
call s:h("Include",        { "fg": s:theme.purple })
call s:h("Define",         { "fg": s:theme.purple })
call s:h("Macro",          { "fg": s:theme.purple })
call s:h("PreCondit",      { "fg": s:theme.purple })

call s:h("Type",           { "fg": s:theme.cyan })
call s:h("StorageClass",   { "fg": s:theme.cyan })
call s:h("Structure",      { "fg": s:theme.cyan })
call s:h("Typedef",        { "fg": s:theme.cyan })

call s:h("Cursor",         { "fg": s:theme.bg, "bg": s:theme.fg })
call s:h("Ignore",         {})
call s:h("Conceal",        {})

call s:h("DiffAdd",        { "fg": s:theme.green })
call s:h("DiffChange",     { "fg": s:theme.orange })
call s:h("DiffDelete",     { "fg": s:theme.red })
call s:h("DiffText",       { "fg": s:theme.fg })

call s:h("SpellBad",       { "fg": s:theme.red })
call s:h("SpellCap",       { "fg": s:theme.cyan })
call s:h("SpellRare",      { "fg": s:theme.orange })
call s:h("SpellLocal",     { "fg": s:theme.green })

" CSS
call s:h("cssAttr",              { "fg": s:theme.cyan })
call s:h("cssAttributeSelector", { "fg": s:theme.blue })
call s:h("cssClassName",         { "fg": s:theme.blue })
call s:h("cssIdentifier",        { "fg": s:theme.blue })
call s:h("cssTagName",           { "fg": s:theme.blue })
call s:h("cssDefinition",        { "fg": s:theme.blue })
call s:h("cssFontDescriptor",    { "fg": s:theme.blue })
call s:h("cssImportant",         { "fg": s:theme.blue })
call s:h("cssMediaType",         { "fg": s:theme.cyan })
call s:h("cssNoise",             { "fg": s:theme.blue })
call s:h("cssProp",              { "fg": s:theme.cyan })
call s:h("cssPseudoClassId",     { "fg": s:theme.blue })
call s:h("cssSelectorOp",        { "fg": s:theme.blue })
call s:h("cssSelectorOp2",       { "fg": s:theme.blue })
call s:h("cssVendor",            { "fg": s:theme.cyan })
hi link cssBraces     Delimiter
hi link cssAttrComma  Delimiter

" HTML
call s:h("htmlH1",             { "fg": s:theme.blue })
call s:h("htmlTagName",        { "fg": s:theme.blue })
call s:h("htmlArg",            { "fg": s:theme.cyan })
hi link htmlTag             Delimiter
hi link htmlEndTag          Delimiter
hi link htmlSpecialTagName  htmlTagName

" JavaScript
call s:h("javaScriptRequire",    { "fg": s:theme.blue })
call s:h("javaScriptReserved",   { "fg": s:theme.blue })
hi link javaScriptNull    Boolean
hi link javaScriptBraces  Delimiter

" https://github.com/othree/yajs.vim
call s:h("javascriptDocTags",            { "fg": s:theme.blue })
call s:h("javascriptFuncArg",            { "fg": s:theme.blue })
call s:h("javascriptDocNotation",        { "fg": s:theme.blue })
call s:h("javascriptObjectLabel",        { "fg": s:theme.blue })
call s:h("javascriptPropertyNameString", { "fg": s:theme.blue })
call s:h("javascriptArrowFunc",          { "fg": s:theme.purple })
call s:h("javascriptClassExtends",       { "fg": s:theme.purple })
call s:h("javascriptImport",             { "fg": s:theme.purple })
call s:h("javascriptExport",             { "fg": s:theme.purple })
call s:h("javascriptVariable",           { "fg": s:theme.cyan })
call s:h("javascriptPropertyName",       { "fg": s:theme.cyan })
call s:h("javascriptClassKeyword",       { "fg": s:theme.cyan })
call s:h("javascriptFuncKeyword",        { "fg": s:theme.cyan })
call s:h("javascriptGlobal",             { "fg": s:theme.cyan })
call s:h("javascriptOpSymbol",           { "fg": s:theme.cyan })
call s:h("javascriptIdentifierName",     { "fg": s:theme.blue })
call s:h("javascriptMethod",             { "fg": s:theme.blue })
call s:h("javascriptFuncName",           { "fg": s:theme.blue })
call s:h("javascriptDocParamName",       { "fg": s:theme.blue })
call s:h("javascriptProp",               { "fg": s:theme.blue })
hi link javascriptBraces           Delimiter
hi link javascriptBrackets         Delimiter
hi link javascriptComma            Delimiter
hi link javascriptDotNotation      Delimiter
hi link javascriptEndColons        Delimiter
hi link javascriptParens           Delimiter
hi link javascriptObjectLabelColon Delimiter

" JSON
hi link jsonBoolean Boolean

" Ruby
call s:h("rubyAttribute",                 { "fg": s:theme.cyan })
call s:h("rubyClass",                     { "fg": s:theme.cyan })
call s:h("rubyBlockParameter",            { "fg": s:theme.blue })
call s:h("rubyBlockParameterList",        { "fg": s:theme.delimiter })
call s:h("rubyControl",                   { "fg": s:theme.blue })
call s:h("rubyConstant",                  { "fg": s:theme.blue })
call s:h("rubyEval",                      { "fg": s:theme.blue })
call s:h("rubyGlobalVariable",            { "fg": s:theme.blue })
call s:h("rubyIncluderubyGlobalVariable", { "fg": s:theme.blue })
call s:h("rubyInterpolation",             { "fg": s:theme.cyan })
call s:h("rubyInterpolationDelimiter",    { "fg": s:theme.blue })
call s:h("rubyKeywordAsMethod",           { "fg": s:theme.blue })
call s:h("rubyLocalVariableOrMethod",     { "fg": s:theme.blue })
call s:h("rubyModule",                    { "fg": s:theme.blue })
call s:h("rubyPseudoVariable",            { "fg": s:theme.purple })
call s:h("rubyEscape",                    { "fg": s:theme.purple })
call s:h("rubyRegexpSpecial",             { "fg": s:theme.purple })
call s:h("rubyInstanceVariable",          { "fg": s:theme.purple })
call s:h("rubySymbol",                    { "fg": s:theme.purple })
call s:h("rubyRegexp",                    { "fg": s:theme.blue })
call s:h("rubyRegexpCharClass",           { "fg": s:theme.blue })
call s:h("rubyStringDelimiter",           { "fg": s:theme.cyan })
call s:h("rubyStringEscape",              { "fg": s:theme.blue })
hi link RubyArrayDelimiter       Delimiter
hi link RubyCurlyBlockDelimiter  Delimiter

" Sass
call s:h("sassFor",        { "fg": s:theme.blue })
call s:h("sassVariable",   { "fg": s:theme.blue })
call s:h("sassMedia",      { "fg": s:theme.blue })
call s:h("sassAmpersand",  { "fg": s:theme.blue })
call s:h("sassDefinition", { "fg": s:theme.blue })
call s:h("sassMediaQuery", { "fg": s:theme.blue })
call s:h("sassMixinName",  { "fg": s:theme.blue })
call s:h("sassMixin",      { "fg": s:theme.cyan })
call s:h("sassControl",    { "fg": s:theme.purple })
call s:h("sassExtend",     { "fg": s:theme.purple })
hi link sassClass     cssClassName
hi link sassClassChar cssClassName
hi link sassId        cssIdentifier
hi link sassIdChar    cssIdentifier
hi link sassInclude   PreProc
hi link sassMixing    PreProc

" neomake/neomake
call s:h("NeomakeWarningSign", { "fg": s:theme.orange, "bg": s:theme.bg_darker })
call s:h("NeomakeErrorSign",   { "fg": s:theme.red, "bg": s:theme.bg_darker })
call s:h("NeomakeInfoSign",    { "fg": s:theme.blue, "bg": s:theme.bg_darker })

" tpope/vim-fugitive
hi link diffAdded   DiffAdd
hi link diffRemoved DiffDelete

" Git
call s:h("gitcommitComment",       { "fg": s:theme.comment })
call s:h("gitcommitUnmerged",      { "fg": s:theme.blue })
call s:h("gitcommitBranch",        { "fg": s:theme.purple })
call s:h("gitcommitDiscardedType", { "fg": s:theme.red })
call s:h("gitcommitSelectedType",  { "fg": s:theme.blue })
call s:h("gitcommitUntrackedFile", { "fg": s:theme.blue })
call s:h("gitcommitDiscardedFile", { "fg": s:theme.red })
call s:h("gitcommitSelectedFile",  { "fg": s:theme.blue })
call s:h("gitcommitUnmergedFile",  { "fg": s:theme.orange })
hi link gitcommitNoBranch       gitcommitBranch
hi link gitcommitUntracked      gitcommitComment
hi link gitcommitDiscarded      gitcommitComment
hi link gitcommitSelected       gitcommitComment
hi link gitcommitDiscardedArrow gitcommitDiscardedFile
hi link gitcommitSelectedArrow  gitcommitSelectedFile
hi link gitcommitUnmergedArrow  gitcommitUnmergedFile
