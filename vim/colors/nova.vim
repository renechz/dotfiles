" Vim Color File
" Name:       nova.vim
" Maintainer: https://github.com/renechz/nova.vim/
" License:    The MIT License (MIT)
" Based On:   https://github.com/MaxSt/FlatColor/

highlight clear

if exists("syntax_on")
  syntax reset
endif

let g:colors_name = "nova"
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

let s:nova  = {
  \ "dark": {
      \ "bg":     { "hex": "#2c373e", "cterm": "235" },
      \ "fg":     { "hex": "#C5D4DD", "cterm": "188" },
      \ "cyan":   { "hex": "#7fc1ca", "cterm": "242" },
      \ "blue":   { "hex": "#83AFE5", "cterm": "242" },
      \ "purple": { "hex": "#9A93E1", "cterm": "242" },
      \ "pink":   { "hex": "#D18EC2", "cterm": "242" },
      \ "red":    { "hex": "#DF8C8C", "cterm": "242" },
      \ "orange": { "hex": "#F2C38F", "cterm": "242" },
      \ "yellow": { "hex": "#DADA93", "cterm": "242" },
      \ "green":  { "hex": "#A8CE93", "cterm": "242" },
      \ "gray0":  { "hex": "#1E272C", "cterm": "242" },
      \ "gray1":  { "hex": "#3C4C55", "cterm": "242" },
      \ "gray2":  { "hex": "#556873", "cterm": "242" },
      \ "gray3":  { "hex": "#6A7D89", "cterm": "242" },
      \ "gray4":  { "hex": "#899BA6", "cterm": "242" },
      \ "gray5":  { "hex": "#C5D4DD", "cterm": "242" },
      \ "gray6":  { "hex": "#E6EEF3", "cterm": "242" },
  \ },
  \ "light": {
      \ "bg":     { "hex": "#fbfaf9", "cterm": "188" },
      \ "fg":     { "hex": "#5b544d", "cterm": "235" },
      \ "cyan":   { "hex": "#55adb9", "cterm": "242" },
      \ "blue":   { "hex": "#327bd4", "cterm": "242" },
      \ "purple": { "hex": "#5246cc", "cterm": "242" },
      \ "pink":   { "hex": "#ba56a4", "cterm": "242" },
      \ "red":    { "hex": "#ca3f3f", "cterm": "242" },
      \ "orange": { "hex": "#e68b26", "cterm": "242" },
      \ "yellow": { "hex": "#c1a34a", "cterm": "242" },
      \ "green":  { "hex": "#7db65d", "cterm": "242" },
      \ "gray0":  { "hex": "#fafafa", "cterm": "242" },
      \ "gray1":  { "hex": "#fbfaf9", "cterm": "242" },
      \ "gray2":  { "hex": "#dcd3ca", "cterm": "242" },
      \ "gray3":  { "hex": "#d4c9be", "cterm": "242" },
      \ "gray4":  { "hex": "#ccbfb2", "cterm": "242" },
      \ "gray5":  { "hex": "#c4b5a7", "cterm": "242" },
      \ "gray6":  { "hex": "#bcac9b", "cterm": "242" },
  \ }
\ }

if s:is_dark
  let s:theme = s:nova.dark
  call s:h("Normal", { "fg": s:theme.fg, "bg": s:theme.bg })
  set background=dark
else
  let s:theme = s:nova.light
  call s:h("Normal", { "fg": s:theme.fg, "bg": s:theme.bg })
  set background=light
endif

call s:h("ColorColumn",   { "bg": s:theme.gray2 })
call s:h("CursorColumn",  { "bg": s:theme.gray2 })
call s:h("CursorLine",    { "bg": s:theme.gray2 })
call s:h("Directory",     { "fg": s:theme.cyan })
call s:h("DiffAdd",       { "fg": s:theme.gray1, "bg": s:theme.green })
call s:h("DiffChange",    { "fg": s:theme.gray1, "bg": s:theme.orange })
call s:h("DiffDelete",    { "fg": s:theme.red })
call s:h("DiffText",      { "fg": s:theme.gray1, "bg": s:theme.orange, "gui": "bold", "cterm": "bold" })
call s:h("ErrorMsg",      { "fg": s:theme.red })
call s:h("VertSplit",     { "fg": s:theme.gray2, "bg": s:theme.gray2 })
call s:h("Folded",        { "fg": s:theme.cyan })
call s:h("FoldColumn",    { "fg": s:theme.cyan })
call s:h("SignColumn",    {})
call s:h("IncSearch",     { "fg": s:theme.gray0, "bg": s:theme.pink })
call s:h("LineNr",        { "fg": s:theme.gray3 })
call s:h("CursorLineNr",  { "fg": s:theme.cyan })
call s:h("MatchParen",    { "fg": s:theme.cyan })
call s:h("ModeMsg",       { "fg": s:theme.cyan })
call s:h("MoreMsg",       { "fg": s:theme.cyan })
call s:h("NonText",       { "fg": s:theme.gray4 })
call s:h("Pmenu",         { "fg": s:theme.gray5, "bg": s:theme.gray2 })
call s:h("PmenuSel",      { "fg": s:theme.gray2, "bg": s:theme.cyan })
call s:h("PmenuSbar",     { "fg": s:theme.gray4, "bg": s:theme.gray4 })
call s:h("PmenuThumb",    { "fg": s:theme.cyan, "bg": s:theme.cyan })
call s:h("Question",      { "fg": s:theme.cyan })
call s:h("Search",        { "fg": s:theme.gray0, "bg": s:theme.pink })
call s:h("SpecialKey",    { "fg": s:theme.gray4 })
call s:h("StatusLine",    { "fg": s:theme.cyan, "bg": s:theme.gray2 })
call s:h("StatusLineNC",  { "fg": s:theme.gray1, "bg": s:theme.gray2 })
call s:h("Title",         { "fg": s:theme.orange })
call s:h("Visual",        { "fg": s:theme.gray1, "bg": s:theme.cyan })
call s:h("VisualNOS",     { "fg": s:theme.gray1, "bg": s:theme.cyan })
call s:h("WarningMsg",    { "fg": s:theme.red })
call s:h("WildMenu",      { "fg": s:theme.gray2, "bg": s:theme.cyan })
call s:h("EndOfBuffer",   { "fg": s:theme.gray2 })

call s:h("SpellBad",      { "fg": s:theme.red })
call s:h("SpellCap",      { "fg": s:theme.red })

call s:h("Comment",      { "fg": s:theme.gray4, "gui": "italic", "cterm": "italic" })
call s:h("Constant",     { "fg": s:theme.cyan })
call s:h("Identifier",   { "fg": s:theme.blue })
call s:h("Statement",    { "fg": s:theme.yellow })
call s:h("PreProc",      { "fg": s:theme.purple })
call s:h("Type",         { "fg": s:theme.green })
call s:h("Special",      { "fg": s:theme.orange })
call s:h("Underlined",   { "fg": s:theme.pink, "cterm": "underline" })
call s:h("Error",        { "fg": s:theme.red })
call s:h("Todo",         { "fg": s:theme.red })
call s:h("Ignore",       { "fg": s:theme.gray4 })
call s:h("Conceal",      { "fg": s:theme.gray4 })
call s:h("Noise",        { "fg": s:theme.gray4 })
call s:h("Quote",        { "fg": s:theme.gray4 })

hi link cssAttr              Constant
hi link cssAttrRegion        Constant
hi link cssAttributeSelector Constant
hi link cssClassName         Identifier
hi link cssIdentifier        Identifier
hi link cssFunctionName      Statement
hi link cssProp              Statement
hi link cssTagName           PreProc
hi link cssFontDescriptor    PreProc
hi link cssBraces            Special
hi link cssClassNameDot      Noise

hi link gitcommitComment        Comment
hi link gitcommitBranch         Constant
hi link gitcommitUntracked      Constant
hi link gitcommitDiscardedType  Error
hi link gitcommitDiscardedFile  Error
hi link gitcommitNoBranch       Error
hi link gitcommitUnmerged       Error
hi link gitcommitUnmergedFile   Statement
hi link gitcommitSelectedType   Special
hi link gitcommitUntrackedFile  Special
hi link gitcommitSelectedFile   Special
hi link gitcommitDiscarded      gitcommitComment
hi link gitcommitSelected       gitcommitComment
hi link gitcommitDiscardedArrow gitcommitDiscardedFile
hi link gitcommitSelectedArrow  gitcommitSelectedFile
hi link gitcommitUnmergedArrow  gitcommitUnmergedFile

hi link htmlArg            Statement
hi link htmlH1             Constant
hi link htmlH2             Constant
hi link htmlH3             Constant
hi link htmlH4             Constant
hi link htmlH5             Constant
hi link htmlH6             Constant
hi link htmlLink           Constant
hi link htmlTitle          Constant
hi link htmlTagName        Identifier
hi link htmlSpecialTagName Identifier
hi link htmlTag            Identifier
hi link htmlEndTag         Identifier

hi link jsBracket                    Constant
hi link jsBrackets                   Constant
hi link jsObjectBraces               Constant
hi link jsObjectValue                Constant
hi link jsParen                      Constant
hi link jsParenSwitch                Constant
hi link jsParenIfElse                Constant
hi link jsTemplateString             Constant
hi link jsTemplateVar                Constant
hi link jsTernaryIf                  Constant
hi link jsVariableDef                Identifier
hi link jsObject                     Identifier
hi link jsObjectKey                  Identifier
hi link jsObjectStringKey            Identifier
hi link jsFuncArgs                   Identifier
hi link jsDestructuringBlock         Identifier
hi link jsDestructuringArray         Identifier
hi link jsDestructuringPropertyValue Identifier
hi link jsSpreadExpression           Identifier
hi link jsImportContainer            Identifier
hi link jsExportContainer            Identifier
hi link jsModuleGroup                Identifier
hi link jsFuncCall                   Statement
hi link jsOperator                   Statement
hi link jsSpreadOperator             Statement
hi link jsFunction                   Type
hi link jsStorageClass               Type
hi link jsNan                        Type
hi link jsGlobalObjects              PreProc
hi link jsGlobalNodeObjects          PreProc
hi link jsThis                       PreProc
hi link jsBraces                     Special
hi link jsFuncBraces                 Special
hi link jsDestructuringBraces        Special
hi link jsClassBraces                Special
hi link jsParens                     Special
hi link jsFuncParens                 Special
hi link jsArrowFunction              Special
hi link jsModuleAsterisk             Special
hi link jsNoise                      Noise

hi link jsxRegion Statement

hi link jsonBoolean Boolean
hi link jsonKeyword Identifier
hi link jsonQuote   Noise

hi link rubyConstant        Constant
hi link rubyStringDelimiter Constant
hi link rubyDefine          Identifier

hi link sassClass     cssClassName
hi link sassClassChar cssClassName
hi link sassId        cssIdentifier
hi link sassIdChar    cssIdentifier
hi link sassInclude   PreProc
hi link sassMixing    PreProc

hi link netrwPlain    Constant
hi link netrwDir      Constant
hi link netrwExe      Identifier
hi link netrwClassify Special
hi link netrwVersion  Special

hi link shDerefSimple  Constant
hi link shFunction     Identifier
hi link shCmdSubRegion Statement
hi link shFunctionKey  Type
hi link shQuote        Noise

" https://github.com/tpope/vim-fugitive
hi link diffAdded   DiffAdd
hi link diffRemoved DiffDelete

" https://github.com/w0rp/ale
call s:h("ALEWarningSign", {})
call s:h("ALEErrorSign",   {})

call s:h("fzf1", { "fg": s:theme.gray1, "bg": s:theme.gray2 })
call s:h("fzf2", { "fg": s:theme.gray1, "bg": s:theme.gray2 })
call s:h("fzf3", { "fg": s:theme.gray1, "bg": s:theme.gray2 })
