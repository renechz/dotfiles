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

" vim-hemisu: https://github.com/noahfrederick/vim-hemisu/
function! s:h(group, style)
  execute "highlight" a:group
    \ "guifg="   (has_key(a:style, "fg")    ? a:style.fg    : "NONE")
    \ "guibg="   (has_key(a:style, "bg")    ? a:style.bg    : "NONE")
    \ "guisp="   (has_key(a:style, "sp")    ? a:style.sp    : "NONE")
    \ "gui="     (has_key(a:style, "gui")   ? a:style.gui   : "NONE")
    \ "cterm="   (has_key(a:style, "cterm") ? a:style.cterm : "NONE")
endfunction

let s:ayu  = {
\   "bg":            { "mirage": "#212733", "light": "#fafafa" },
\   "fg":            { "mirage": "#d9d7ce", "light": "#5c6773" },
\   "accent":        { "mirage": "#ffcc66", "light": "#ff6a00" },
\   "ui": {
\     "fg":          { "mirage": "#607080", "light": "#828c99" },
\     "gridDivider": { "mirage": "#343d4a", "light": "#e2e4e7" },
\     "folder":      { "mirage": "#3e4b59", "light": "#828c99" },
\     "scrollbar":   { "mirage": "#ffffff", "light": "#000000" },
\     "panel": {
\       "bg":        { "mirage": "#272d38", "light": "#ffffff" },
\       "shadow":    { "mirage": "#11141a", "light": "#a0a0a0" },
\       "pathFg":    { "mirage": "#607080", "light": "#b0bec5" },
\       "rowBg":     { "mirage": "#303540", "light": "#f5f5f5" },
\     },
\   },
\   "syntax": {
\     "error":       { "mirage": "#ff3333", "light": "#ff3333" },
\     "lineHg":      { "mirage": "#242b38", "light": "#f2f2f2" },
\     "gutterFg":    { "mirage": "#3d4752", "light": "#d9d8d7" },
\     "selection":   { "mirage": "#343f4c", "light": "#f0eee4" },
\     "stackGuide":  { "mirage": "#39434d", "light": "#dedddc" },
\     "activeGuide": { "mirage": "#606f80", "light": "#b3b2b1" },
\     "tag":         { "mirage": "#5ccfe6", "light": "#41a6d9" },
\     "func":        { "mirage": "#ffd580", "light": "#f29718" },
\     "regexp":      { "mirage": "#95e6cb", "light": "#4dbf99" },
\     "string":      { "mirage": "#bae67e", "light": "#86b300" },
\     "comment":     { "mirage": "#5c6773", "light": "#abb0b6" },
\     "supVar":      { "mirage": "#f07178", "light": "#f07178" },
\     "keyword":     { "mirage": "#ffae57", "light": "#f2590c" },
\     "esSpec":      { "mirage": "#ffc44c", "light": "#cca37a" },
\     "constant":    { "mirage": "#d4bfff", "light": "#a37acc" },
\     "operator":    { "mirage": "#80d4ff", "light": "#e7c547" },
\   },
\ }

if s:is_dark
  let s:theme = "mirage"
  set background=dark
else
  let s:theme = "light"
  set background=light
endif

let s:fg0 = { "mirage": "#e4e3dc", "light": "#515a65" }
let s:fg1 = s:ayu.fg[s:theme]
let s:fg2 = { "mirage": "#cecbc0", "light": "#677481" }
let s:fg3 = { "mirage": "#c3c0b1", "light": "#73808f" }
let s:fg4 = { "mirage": "#b8b4a3", "light": "#818d9a" }

let s:bg0 = s:ayu.bg[s:theme]
let s:bg1 = { "mirage": "#2b3342", "light": "#ededed" }
let s:bg2 = { "mirage": "#353f52", "light": "#e1e1e1" }
let s:bg3 = { "mirage": "#3f4b61", "light": "#d4d4d4" }
let s:bg4 = { "mirage": "#495770", "light": "#c7c7c7" }

call s:h("Normal", { "fg": s:ayu.fg[s:theme], "bg": s:ayu.bg[s:theme] })

call s:h("AyuFg0", { "fg": s:fg0[s:theme] })
call s:h("AyuFg1", { "fg": s:fg1 })
call s:h("AyuFg2", { "fg": s:fg2[s:theme] })
call s:h("AyuFg3", { "fg": s:fg3[s:theme] })
call s:h("AyuFg4", { "fg": s:fg4[s:theme] })
call s:h("AyuBg0", { "fg": s:bg0 })
call s:h("AyuBg1", { "fg": s:bg1[s:theme] })
call s:h("AyuBg2", { "fg": s:bg2[s:theme] })
call s:h("AyuBg3", { "fg": s:bg3[s:theme] })
call s:h("AyuBg4", { "fg": s:bg4[s:theme] })
call s:h("AyuGray", { "fg": s:ayu.ui.fg[s:theme] })

call s:h("AyuRed",        { "fg": s:ayu.syntax.supVar[s:theme] })
call s:h("AyuGreen",      { "fg": s:ayu.syntax.string[s:theme] })
call s:h("AyuYellow",     { "fg": s:ayu.syntax.func[s:theme] })
call s:h("AyuBlue",       { "fg": s:ayu.syntax.tag[s:theme] })
call s:h("AyuPurple",     { "fg": s:ayu.syntax.constant[s:theme] })
call s:h("AyuAqua",       { "fg": s:ayu.syntax.regexp[s:theme] })
call s:h("AyuOrange",     { "fg": s:ayu.syntax.keyword[s:theme] })
call s:h("AyuOrangeBold", { "fg": s:ayu.syntax.keyword[s:theme], "gui": "bold", "cterm": "bold" })
call s:h("AyuAquaBold",   { "fg": s:ayu.syntax.regexp[s:theme], "gui": "bold", "cterm": "bold" })
call s:h("AyuGreenBold",  { "fg": s:ayu.syntax.string[s:theme], "gui": "bold", "cterm": "bold" })
call s:h("AyuYellowBold", { "fg": s:ayu.syntax.func[s:theme], "gui": "bold", "cterm": "bold" })

call s:h("ColorColumn",   { "bg": s:ayu.syntax.lineHg[s:theme] })
call s:h("CursorColumn",  { "bg": s:ayu.syntax.lineHg[s:theme] })
call s:h("CursorLine",    { "bg": s:ayu.syntax.lineHg[s:theme] })
call s:h("CursorLineNr",  { "fg": s:ayu.accent[s:theme], "bg": s:ayu.syntax.lineHg[s:theme] })
call s:h("LineNr",        { "fg": s:ayu.syntax.gutterFg[s:theme] })
call s:h("Cursor",        { "bg": s:ayu.accent[s:theme] })
call s:h("CursorIM",      { "bg": s:ayu.accent[s:theme] })
call s:h("DiffAdd",       { "fg": s:ayu.syntax.string[s:theme], "bg": s:ayu.ui.panel.bg[s:theme] })
call s:h("DiffChange",    { "fg": s:ayu.syntax.tag[s:theme], "bg": s:ayu.ui.panel.bg[s:theme] })
call s:h("DiffDelete",    { "fg": s:ayu.syntax.error[s:theme], "bg": s:ayu.ui.panel.bg[s:theme] })
call s:h("DiffText",      { "fg": s:ayu.fg[s:theme], "bg": s:ayu.ui.panel.bg[s:theme], "gui": "bold", "cterm": "bold" })
call s:h("ErrorMsg",      { "fg": s:ayu.bg[s:theme], "bg": s:ayu.syntax.error[s:theme] })
call s:h("VertSplit",     { "fg": s:ayu.ui.gridDivider[s:theme] })
call s:h("Folded",        { "fg": s:ayu.ui.fg[s:theme], "bg": s:ayu.ui.panel.bg[s:theme] })
call s:h("FoldColumn",    { "bg": s:ayu.ui.panel.bg[s:theme] })
call s:h("SignColumn",    { "bg": s:ayu.ui.panel.bg[s:theme] })
call s:h("IncSearch",     { "fg": s:ayu.bg[s:theme], "bg": s:ayu.syntax.constant[s:theme] })
call s:h("MatchParen",    { "fg": s:ayu.bg[s:theme], "bg": s:ayu.accent[s:theme] })
call s:h("NonText",       { "fg": s:ayu.bg[s:theme] })
call s:h("Pmenu",         { "fg": s:ayu.fg[s:theme], "bg": s:ayu.syntax.selection[s:theme] })
call s:h("PmenuSel",      { "fg": s:ayu.fg[s:theme], "bg": s:ayu.syntax.selection[s:theme], "gui": "reverse", "cterm": "reverse" })
call s:h("PmenuSbar",     { "fg": s:ayu.ui.scrollbar[s:theme] })
call s:h("PmenuThumb",    { "fg": s:ayu.ui.scrollbar[s:theme] })
call s:h("Search",        { "fg": s:ayu.bg[s:theme], "bg": s:ayu.syntax.constant[s:theme] })
call s:h("StatusLine",    { "fg": s:ayu.fg[s:theme], "bg": s:ayu.ui.fg[s:theme] })
call s:h("StatusLineNC",  { "fg": s:ayu.fg[s:theme], "bg": s:ayu.ui.fg[s:theme] })
call s:h("TabLine",       { "fg": s:ayu.ui.fg[s:theme], "bg": s:ayu.ui.panel.bg[s:theme] })
call s:h("TabLineFill",   { "bg": s:ayu.syntax.lineHg[s:theme] })
call s:h("TabLineSel",    { "fg": s:ayu.accent[s:theme], "bg": s:ayu.bg[s:theme] })
call s:h("Visual",        { "bg": s:ayu.syntax.selection[s:theme] })
call s:h("WildMenu",      { "fg": s:ayu.bg[s:theme], "bg": s:ayu.syntax.supVar[s:theme] })

hi! link NonText    AyuBg2
hi! link SpecialKey AyuBg2
hi! link Directory  AyuGreenBold
hi! link Question   AyuOrangeBold
hi! link MoreMsg    AyuYellowBold
hi! link ModeMsg    AyuYellowBold
hi! link WarningMsg AyuRedBold

call s:h("Comment", { "fg": s:ayu.syntax.comment[s:theme], "gui": "italic", "cterm": "italic" })
call s:h("Error",   { "fg": s:ayu.syntax.error[s:theme], "bg": s:ayu.bg[s:theme], "gui": "inverse", "cterm": "inverse" })

hi! link Operator     AyuFg1
hi! link String       AyuGreen
hi! link Title        AyuGreenBold
hi! link Function     AyuGreenBold
hi! link Statement    AyuRed
hi! link Conditional  AyuRed
hi! link Repeat       AyuRed
hi! link Label        AyuRed
hi! link Exception    AyuRed
hi! link Keyword      AyuRed
hi! link Identifier   AyuBlue
hi! link PreProc      AyuAqua
hi! link Include      AyuAqua
hi! link Define       AyuAqua
hi! link Macro        AyuAqua
hi! link PreCondit    AyuAqua
hi! link Structure    AyuAqua
hi! link Constant     AyuPurple
hi! link Character    AyuPurple
hi! link Boolean      AyuPurple
hi! link Number       AyuPurple
hi! link Float        AyuPurple
hi! link Type         AyuYellow
hi! link Typedef      AyuYellow
hi! link Special      AyuOrange
hi! link StorageClass AyuOrange

hi! link cssVendor               AyuFg1
hi! link cssBraces               AyuBlue
hi! link cssColor                AyuBlue
hi! link cssSelectorOp           AyuBlue
hi! link cssSelectorOp2          AyuBlue
hi! link cssFunctionName         AyuYellow
hi! link cssUIProp               AyuYellow
hi! link cssPositioningProp      AyuYellow
hi! link cssIdentifier           AyuOrange
hi! link cssClassName            AyuGreen
hi! link cssImportant            AyuGreen
hi! link cssTextProp             AyuAqua
hi! link cssAnimationProp        AyuAqua
hi! link cssTransformProp        AyuAqua
hi! link cssTransitionProp       AyuAqua
hi! link cssPrintProp            AyuAqua
hi! link cssBoxProp              AyuAqua
hi! link cssFontDescriptorProp   AyuAqua
hi! link cssFlexibleBoxProp      AyuAqua
hi! link cssBorderOutlineProp    AyuAqua
hi! link cssBackgroundProp       AyuAqua
hi! link cssMarginProp           AyuAqua
hi! link cssListProp             AyuAqua
hi! link cssTableProp            AyuAqua
hi! link cssFontProp             AyuAqua
hi! link cssPaddingProp          AyuAqua
hi! link cssDimensionProp        AyuAqua
hi! link cssRenderProp           AyuAqua
hi! link cssColorProp            AyuAqua
hi! link cssGeneratedContentProp AyuAqua

hi! link gitcommitComment        Comment
hi! link gitcommitBranch         Constant
hi! link gitcommitDiscardedType  Error
hi! link gitcommitDiscardedFile  Error
hi! link gitcommitOverflow       Error
hi! link gitcommitUnmergedFile   Keyword
hi! link gitcommitUnmerged       Tag
hi! link gitcommitSelectedType   Tag
hi! link gitcommitUntrackedFile  Tag
hi! link gitcommitSelectedFile   Tag
hi! link gitcommitNoBranch       gitcommitBranch
hi! link gitcommitUntracked      gitcommitComment
hi! link gitcommitDiscarded      gitcommitComment
hi! link gitcommitSelected       gitcommitComment
hi! link gitcommitDiscardedArrow gitcommitDiscardedFile
hi! link gitcommitSelectedArrow  gitcommitSelectedFile
hi! link gitcommitUnmergedArrow  gitcommitUnmergedFile

hi! link htmlTagN           AyuFg1
hi! link htmlTag            AyuBlue
hi! link htmlEndTag         AyuBlue
hi! link htmlArg            AyuAqua
hi! link htmlTagName        AyuAquaBold
hi! link htmlSpecialTagName AyaAquaBold
hi! link htmlScriptTag      AyuPurple
hi! link htmlSpecialChar    AyuOrange

hi! link xmlTag               AyuBlue
hi! link xmlEndTag            AyuBlue
hi! link xmlTagName           AyuBlue
hi! link xmlEqual             AyuBlue
hi! link xmlAttrib            AyuAqua
hi! link docbkKeyword         AyuAquaBold
hi! link xmlDocTypeDecl       AyuGray
hi! link xmlCdataStart        AyuGray
hi! link dtdFunction          AyuGray
hi! link xmlProcessingDelim   AyuGray
hi! link dtdParamEntityPunct  AyuGray
hi! link dtdParamEntityDPunct AyuGray
hi! link xmlAttribPunct       AyuGray
hi! link xmlDocTypeKeyword    AyuPurple
hi! link xmlCdataCdata        AyuPurple
hi! link dtdTagName           AyuPurple
hi! link xmlEntity            AyuOrange
hi! link xmlEntityPunct       AyuOrange

hi! link javaScriptBraces               AyuFg1
hi! link javaScriptFunction             AyuAqua
hi! link javaScriptIdentifier           AyuRed
hi! link javaScriptMember               AyuBlue
hi! link javaScriptNumber               AyuPurple
hi! link javaScriptNull                 AyuPurple
hi! link javaScriptParens               AyuFg3
hi! link javascriptImport               AyuAqua
hi! link javascriptExport               AyuAqua
hi! link javascriptClassKeyword         AyuAqua
hi! link javascriptClassExtends         AyuAqua
hi! link javascriptDefault              AyuAqua
hi! link javascriptClassName            AyuYellow
hi! link javascriptClassSuperName       AyuYellow
hi! link javascriptGlobal               AyuYellow
hi! link javascriptEndColons            AyuFg1
hi! link javascriptFuncArg              AyuFg1
hi! link javascriptGlobalMethod         AyuFg1
hi! link javascriptNodeGlobal           AyuFg1
hi! link javascriptVariable             AyuRed
hi! link javascriptIdentifier           AyuOrange
hi! link javascriptClassSuper           AyuOrange
hi! link javascriptFuncKeyword          AyuAqua
hi! link javascriptAsyncFunc            AyuAqua
hi! link javascriptClassStatic          AyuOrange
hi! link javascriptOperator             AyuRed
hi! link javascriptForOperator          AyuRed
hi! link javascriptYield                AyuRed
hi! link javascriptExceptions           AyuRed
hi! link javascriptMessage              AyuRed
hi! link javascriptTemplateSB           AyuAqua
hi! link javascriptTemplateSubstitution AyuFg1
hi! link javascriptLabel                AyuFg1
hi! link javascriptObjectLabel          AyuFg1
hi! link javascriptPropertyName         AyuFg1
hi! link javascriptLogicSymbols         AyuFg1
hi! link javascriptArrowFunc            AyuFg1
hi! link javascriptDocParamName         AyuFg4
hi! link javascriptDocTags              AyuFg4
hi! link javascriptDocNotation          AyuFg4
hi! link javascriptDocParamType         AyuFg4
hi! link javascriptDocNamedParamType    AyuFg4

hi! link typeScriptReserved     AyuAqua
hi! link typeScriptLabel        AyuAqua
hi! link typeScriptIdentifier   AyuOrange
hi! link typeScriptBraces       AyuFg1
hi! link typeScriptEndColons    AyuFg1
hi! link typeScriptDOMObjects   AyuFg1
hi! link typeScriptAjaxMethods  AyuFg1
hi! link typeScriptLogicSymbols AyuFg1
hi! link typeScriptDocSeeTag    Comment
hi! link typeScriptDocParam     Comment

hi! link coffeeExtendedOp AyuFg3
hi! link coffeeSpecialOp  AyuFg3
hi! link coffeeParen      AyuFg3
hi! link coffeeCurly      AyuOrange
hi! link coffeeBracket    AyuOrange

hi! link jsonKeyword AyuGreen
hi! link jsonQuote   AyuGreen
hi! link jsonBraces  AyuFg1
hi! link jsonString  AyuFg1

call s:h("rubyInstanceVariable", { "fg": s:ayu.syntax.supVar[s:theme] })
hi! link rubyStringDelimiter        AyuGreen
hi! link rubyInterpolationDelimiter AyuAqua

hi! link elixirDocString              Comment
hi! link elixirStringDelimiter        AyuGreen
hi! link elixirInterpolationDelimiter AyuAqua
hi! link elixirModuleDeclaration      AyuYellow

hi! link markdownH1                AyuGreenBold
hi! link markdownH2                AyuGreenBold
hi! link markdownH3                AyuYellowBold
hi! link markdownH4                AyuYellowBold
hi! link markdownH5                AyuYellow
hi! link markdownH6                AyuYellow
hi! link markdownCode              AyuAqua
hi! link markdownCodeBlock         AyuAqua
hi! link markdownCodeDelimiter     AyuAqua
hi! link markdownBlockquote        AyuGray
hi! link markdownListMarker        AyuGray
hi! link markdownOrderedListMarker AyuGray
hi! link markdownRule              AyuGray
hi! link markdownHeadingRule       AyuGray
hi! link markdownUrlDelimiter      AyuFg3
hi! link markdownLinkDelimiter     AyuFg3
hi! link markdownLinkTextDelimiter AyuFg3
hi! link markdownHeadingDelimiter  AyuOrange
hi! link markdownUrl               AyuPurple
hi! link markdownUrlTitleDelimiter AyuGreen
hi! link markdownIdDeclaration     markdownLinkText

" hi! link sassVariable   Constant
" hi! link sassExtend     Constant
" hi! link sassAmpersand  Keyword
" hi! link sassControl    Keyword
" hi! link sassInclude    Keyword
" hi! link sassMixing     Keyword
" hi! link scssImport     Keyword
" hi! link sassFor        Type
" hi! link sassMedia      Type
" hi! link sassDefinition Type
" hi! link sassMediaQuery Type
" hi! link sassMixinName  Type
" hi! link sassMixin      Type
" hi! link sassClass      cssClassName
" hi! link sassClassChar  cssClassName
" hi! link sassId         cssIdentifier
" hi! link sassIdChar     cssIdentifier

" hi! link scssSelectorName cssClassName
" hi! link scssMixin        sassMixin

hi! link vimBracket   AyuYellow
hi! link vimNotation  AyuOrange
hi! link vimBracket   AyuOrange
hi! link vimMapModKey AyuOrange
hi! link vimFuncSID   AyuFg3
hi! link vimSetSep    AyuFg3
hi! link vimSep       AyuFg3
hi! link vimContinue  AyuFg3

" hi! link shVarAssign Keyword

" https://github.com/tpope/vim-fugitive
hi! link diffAdded   DiffAdd
hi! link diffRemoved DiffDelete

" https://github.com/w0rp/ale
call s:h("ALEWarningSign", {})
call s:h("ALEErrorSign",   {})
