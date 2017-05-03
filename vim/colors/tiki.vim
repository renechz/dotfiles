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

" vim-hemisu: https://github.com/noahfrederick/vim-hemisu/
function! s:h(group, style)
  execute "highlight" a:group
    \ "guifg="   (has_key(a:style, "fg")    ? a:style.fg    : "NONE")
    \ "guibg="   (has_key(a:style, "bg")    ? a:style.bg    : "NONE")
    \ "guisp="   (has_key(a:style, "sp")    ? a:style.sp    : "NONE")
    \ "gui="     (has_key(a:style, "gui")   ? a:style.gui   : "NONE")
    \ "cterm="   (has_key(a:style, "cterm") ? a:style.cterm : "NONE")
endfunction

let s:tiki  = {
\   "bg0":    { "dark": "#161822", "light": "#c7c9d1" },
\   "bg1":    { "dark": "#202331", "light": "#b9bcc6" },
\   "bg2":    { "dark": "#2a2e41", "light": "#abaeba" },
\   "bg3":    { "dark": "#343950", "light": "#9da1af" },
\   "bg4":    { "dark": "#3e445f", "light": "#8f94a4" },
\   "fg0":    { "dark": "#d5d7dd", "light": "#0c0d13" },
\   "fg1":    { "dark": "#c7c9d1", "light": "#161822" },
\   "fg2":    { "dark": "#b9bcc6", "light": "#202331" },
\   "fg3":    { "dark": "#abaeba", "light": "#2a2e41" },
\   "fg4":    { "dark": "#9da1af", "light": "#343950" },
\   "gray":   { "dark": "#5c6773", "light": "#737888" },
\   "red":    { "dark": "#EC5f67", "light": "#c0392b" },
\   "green":  { "dark": "#afe269", "light": "#27ae60" },
\   "yellow": { "dark": "#FAC863", "light": "#e67e22" },
\   "blue":   { "dark": "#80d4ff", "light": "#2980b9" },
\   "purple": { "dark": "#a093c8", "light": "#8e44ad" },
\   "aqua":   { "dark": "#95e6bc", "light": "#16a085" },
\   "orange": { "dark": "#F99157", "light": "#d35400" },
\ }

if s:is_dark
  let s:theme = "dark"
  set background=dark
else
  let s:theme = "light"
  set background=light
endif

call s:h("Normal", { "fg": s:tiki.fg1[s:theme], "bg": s:tiki.bg0[s:theme] })

call s:h("TikiFg0",        { "fg": s:tiki.fg0[s:theme] })
call s:h("TikiFg1",        { "fg": s:tiki.fg1[s:theme] })
call s:h("TikiFg2",        { "fg": s:tiki.fg2[s:theme] })
call s:h("TikiFg3",        { "fg": s:tiki.fg3[s:theme] })
call s:h("TikiFg4",        { "fg": s:tiki.fg4[s:theme] })
call s:h("TikiBg0",        { "fg": s:tiki.bg0[s:theme] })
call s:h("TikiBg1",        { "fg": s:tiki.bg1[s:theme] })
call s:h("TikiBg2",        { "fg": s:tiki.bg2[s:theme] })
call s:h("TikiBg3",        { "fg": s:tiki.bg3[s:theme] })
call s:h("TikiBg4",        { "fg": s:tiki.bg4[s:theme] })
call s:h("TikiGray",       { "fg": s:tiki.gray[s:theme] })
call s:h("TikiRed",        { "fg": s:tiki.red[s:theme] })
call s:h("TikiGreen",      { "fg": s:tiki.green[s:theme] })
call s:h("TikiYellow",     { "fg": s:tiki.yellow[s:theme] })
call s:h("TikiBlue",       { "fg": s:tiki.blue[s:theme] })
call s:h("TikiPurple",     { "fg": s:tiki.purple[s:theme] })
call s:h("TikiAqua",       { "fg": s:tiki.aqua[s:theme] })
call s:h("TikiOrange",     { "fg": s:tiki.orange[s:theme] })
call s:h("TikiOrangeBold", { "fg": s:tiki.orange[s:theme], "gui": "bold", "cterm": "bold" })
call s:h("TikiAquaBold",   { "fg": s:tiki.aqua[s:theme],   "gui": "bold", "cterm": "bold" })
call s:h("TikiGreenBold",  { "fg": s:tiki.green[s:theme],  "gui": "bold", "cterm": "bold" })
call s:h("TikiYellowBold", { "fg": s:tiki.yellow[s:theme], "gui": "bold", "cterm": "bold" })

call s:h("CursorLine", { "bg": s:tiki.bg1[s:theme] })
hi! link CursorColumn CursorLine

call s:h("TabLineFill", { "bg": s:tiki.bg4[s:theme] })
call s:h("TabLineSel",  { "bg": s:tiki.bg4[s:theme], "gui": "bold", "cterm": "bold" })
hi! link TabLine TabLineFill

call s:h("MatchParen",   { "bg": s:tiki.bg3[s:theme], "gui": "bold", "cterm": "bold" })
call s:h("ColorColumn",  { "bg": s:tiki.bg1[s:theme] })
call s:h("Conceal",      { "bg": s:tiki.blue[s:theme] })
call s:h("CursorLineNr", { "fg": s:tiki.yellow[s:theme], "bg": s:tiki.bg1[s:theme] })

hi! link NonText    TikiBg2
hi! link SpecialKey TikiBg2

call s:h("Visual", { "bg": s:tiki.bg3[s:theme] })
hi! link VisualNOS Visual

call s:h("Search",    { "fg": s:tiki.yellow[s:theme], "bg": s:tiki.bg0[s:theme] })
call s:h("IncSearch", { "fg": s:tiki.orange[s:theme], "bg": s:tiki.bg0[s:theme], "gui": "inverse", "cterm": "inverse" })

call s:h("Underlined", { "fg": s:tiki.blue[s:theme], "gui": "underline", "cterm": "underline" })

call s:h("StatusLine",   { "fg": s:tiki.bg4[s:theme], "bg": s:tiki.bg0[s:theme], "cterm": "bold,inverse", "gui": "bold,inverse" })
call s:h("StatusLineNC", { "fg": s:tiki.bg2[s:theme], "bg": s:tiki.fg4[s:theme], "gui": "bold,inverse", "cterm": "bold,inverse" })

call s:h("VertSplit", { "fg": s:tiki.fg4[s:theme], "bg": s:tiki.bg2[s:theme] })
call s:h("WildMenu",  { "fg": s:tiki.blue[s:theme], "bg": s:tiki.bg2[s:theme], "gui": "bold", "cterm": "bold" })

hi! link Directory  TikiGreenBold
hi! link Title      TikiGreenBold

call s:h("ErrorMsg", { "fg": s:tiki.bg0[s:theme], "bg": s:tiki.red[s:theme], "gui": "bold", "cterm": "bold" })
hi! link MoreMsg    TikiYellowBold
hi! link ModeMsg    TikiYellowBold
hi! link Question   TikiOrangeBold
hi! link WarningMsg TikiRedBold

call s:h("LineNr",     { "fg": s:tiki.bg4[s:theme] })
call s:h("SignColumn", { "bg": s:tiki.bg1[s:theme] })
call s:h("Folded",     { "fg": s:tiki.gray[s:theme], "bg": s:tiki.bg1[s:theme], "gui": "italic", "cterm": "italic" })
call s:h("FoldColumn", { "fg": s:tiki.gray[s:theme], "bg": s:tiki.bg1[s:theme] })

call s:h("Cursor", { "gui": "inverse", "cterm": "inverse" })
hi! link vCursor Cursor
hi! link iCursor Cursor
hi! link lCursor Cursor

call s:h("Pmenu",      { "fg": s:tiki.fg1[s:theme], "bg": s:tiki.bg2[s:theme] })
call s:h("PmenuSel",   { "fg": s:tiki.bg2[s:theme], "bg": s:tiki.blue[s:theme], "gui": "bold", "cterm": "bold" })
call s:h("PmenuSbar",  { "bg": s:tiki.bg2[s:theme] })
call s:h("PmenuThumb", { "bg": s:tiki.bg4[s:theme] })


call s:h("Error",   { "fg": s:tiki.red[s:theme], "gui": "bold,inverse", "cterm": "bold,inverse" })

call s:h("Comment", { "fg": s:tiki.gray[s:theme], "gui": "italic", "cterm": "italic" })
hi! link Constant     TikiPurple
hi! link String       TikiGreen
hi! link Character    TikiPurple
hi! link Number       TikiPurple
hi! link Boolean      TikiPurple
hi! link Float        TikiPurple

hi! link Identifier   TikiBlue
hi! link Function     TikiGreenBold

hi! link Statement    TikiRed
hi! link Conditional  TikiRed
hi! link Repeat       TikiRed
hi! link Label        TikiRed
hi! link Operator     Normal
hi! link Keyword      TikiRed
hi! link Exception    TikiRed

hi! link PreProc      TikiAqua
hi! link Include      TikiAqua
hi! link Define       TikiAqua
hi! link Macro        TikiAqua
hi! link PreCondit    TikiAqua

hi! link Type         TikiYellow
hi! link StorageClass TikiOrange
hi! link Structure    TikiAqua
hi! link Typedef      TikiYellow

hi! link Special      TikiOrange

hi! link Todo         TikiYellow

call s:h("DiffAdd",    { "fg": s:tiki.green[s:theme],  "bg": s:tiki.bg0[s:theme], "gui": "inverse", "cterm": "inverse" })
call s:h("DiffChange", { "fg": s:tiki.aqua[s:theme],   "bg": s:tiki.bg0[s:theme], "gui": "inverse", "cterm": "inverse" })
call s:h("DiffDelete", { "fg": s:tiki.red[s:theme],    "bg": s:tiki.bg0[s:theme], "gui": "inverse", "cterm": "inverse" })
call s:h("DiffText",   { "fg": s:tiki.yellow[s:theme], "bg": s:tiki.bg0[s:theme], "gui": "inverse", "cterm": "inverse" })

hi! link cssVendor               TikiFg1
hi! link cssBraces               TikiBlue
hi! link cssColor                TikiBlue
hi! link cssSelectorOp           TikiBlue
hi! link cssSelectorOp2          TikiBlue
hi! link cssFunctionName         TikiYellow
hi! link cssUIProp               TikiYellow
hi! link cssPositioningProp      TikiYellow
hi! link cssIdentifier           TikiOrange
hi! link cssClassName            TikiGreen
hi! link cssImportant            TikiGreen
hi! link cssTextProp             TikiAqua
hi! link cssAnimationProp        TikiAqua
hi! link cssTransformProp        TikiAqua
hi! link cssTransitionProp       TikiAqua
hi! link cssPrintProp            TikiAqua
hi! link cssBoxProp              TikiAqua
hi! link cssFontDescriptorProp   TikiAqua
hi! link cssFlexibleBoxProp      TikiAqua
hi! link cssBorderOutlineProp    TikiAqua
hi! link cssBackgroundProp       TikiAqua
hi! link cssMarginProp           TikiAqua
hi! link cssListProp             TikiAqua
hi! link cssTableProp            TikiAqua
hi! link cssFontProp             TikiAqua
hi! link cssPaddingProp          TikiAqua
hi! link cssDimensionProp        TikiAqua
hi! link cssRenderProp           TikiAqua
hi! link cssColorProp            TikiAqua
hi! link cssGeneratedContentProp TikiAqua

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

hi! link htmlTagN           TikiFg1
hi! link htmlTag            TikiBlue
hi! link htmlEndTag         TikiBlue
hi! link htmlArg            TikiAqua
hi! link htmlTagName        TikiAquaBold
hi! link htmlSpecialTagName AyaAquaBold
hi! link htmlScriptTag      TikiPurple
hi! link htmlSpecialChar    TikiOrange

hi! link xmlTag               TikiBlue
hi! link xmlEndTag            TikiBlue
hi! link xmlTagName           TikiBlue
hi! link xmlEqual             TikiBlue
hi! link xmlAttrib            TikiAqua
hi! link docbkKeyword         TikiAquaBold
hi! link xmlDocTypeDecl       TikiGray
hi! link xmlCdataStart        TikiGray
hi! link dtdFunction          TikiGray
hi! link xmlProcessingDelim   TikiGray
hi! link dtdParamEntityPunct  TikiGray
hi! link dtdParamEntityDPunct TikiGray
hi! link xmlAttribPunct       TikiGray
hi! link xmlDocTypeKeyword    TikiPurple
hi! link xmlCdataCdata        TikiPurple
hi! link dtdTagName           TikiPurple
hi! link xmlEntity            TikiOrange
hi! link xmlEntityPunct       TikiOrange

hi! link javaScriptBraces               TikiFg1

hi! link javaScriptFunction             TikiAqua
hi! link javascriptFuncKeyword          TikiAqua
hi! link javascriptAsyncFunc            TikiAqua
hi! link jsFuncCall                     TikiAqua
hi! link javascriptArrowFunc            TikiFg1
hi! link javascriptFuncArg              TikiFg1
hi! link jsFuncArgs                     TikiFg1

hi! link javaScriptIdentifier           TikiRed
hi! link javascriptIdentifier           TikiOrange

hi! link javaScriptMember               TikiBlue
hi! link javaScriptNumber               TikiPurple
hi! link javaScriptNull                 TikiPurple

hi! link javaScriptParens               TikiFg3
hi! link jsFuncParens                   TikiFg3

hi! link javascriptImport               TikiAqua
hi! link javascriptExport               TikiAqua

hi! link javascriptClassKeyword         TikiAqua
hi! link javascriptClassExtends         TikiAqua
hi! link javascriptClassName            TikiYellow
hi! link javascriptClassSuperName       TikiYellow
hi! link javascriptClassSuper           TikiOrange
hi! link javascriptClassStatic          TikiOrange

hi! link javascriptDefault              TikiAqua

hi! link javascriptGlobal               TikiYellow
hi! link javascriptGlobalMethod         TikiFg1
hi! link javascriptNodeGlobal           TikiFg1

hi! link javascriptEndColons            TikiFg1
hi! link javascriptVariable             TikiRed

hi! link javascriptOperator             TikiRed
hi! link jsOperator                     TikiRed
hi! link javascriptForOperator          TikiRed

hi! link javascriptYield                TikiRed
hi! link javascriptExceptions           TikiRed
hi! link javascriptMessage              TikiRed

hi! link javascriptTemplateSB           TikiAqua
hi! link javascriptTemplateSubstitution TikiFg1

hi! link javascriptLabel                TikiFg1
hi! link javascriptObjectLabel          TikiFg1
hi! link jsObjectKey                    TikiFg1

hi! link javascriptPropertyName         TikiFg1
hi! link javascriptLogicSymbols         TikiFg1

hi! link javascriptDocParamName         TikiFg4
hi! link javascriptDocTags              TikiFg4
hi! link javascriptDocNotation          TikiFg4
hi! link javascriptDocParamType         TikiFg4
hi! link javascriptDocNamedParamType    TikiFg4

hi! link typeScriptReserved     TikiAqua
hi! link typeScriptLabel        TikiAqua
hi! link typeScriptIdentifier   TikiOrange
hi! link typeScriptBraces       TikiFg1
hi! link typeScriptEndColons    TikiFg1
hi! link typeScriptDOMObjects   TikiFg1
hi! link typeScriptAjaxMethods  TikiFg1
hi! link typeScriptLogicSymbols TikiFg1
hi! link typeScriptDocSeeTag    Comment
hi! link typeScriptDocParam     Comment

hi! link coffeeExtendedOp TikiFg3
hi! link coffeeSpecialOp  TikiFg3
hi! link coffeeParen      TikiFg3
hi! link coffeeCurly      TikiOrange
hi! link coffeeBracket    TikiOrange

hi! link jsonKeyword TikiGreen
hi! link jsonQuote   TikiGreen
hi! link jsonBraces  TikiFg1
hi! link jsonString  TikiFg1

hi! link rubyInstanceVariable       TikiRed
hi! link rubyStringDelimiter        TikiGreen
hi! link rubyInterpolationDelimiter TikiAqua

hi! link elixirDocString              Comment
hi! link elixirStringDelimiter        TikiGreen
hi! link elixirInterpolationDelimiter TikiAqua
hi! link elixirModuleDeclaration      TikiYellow

hi! link markdownH1                TikiGreenBold
hi! link markdownH2                TikiGreenBold
hi! link markdownH3                TikiYellowBold
hi! link markdownH4                TikiYellowBold
hi! link markdownH5                TikiYellow
hi! link markdownH6                TikiYellow
hi! link markdownCode              TikiAqua
hi! link markdownCodeBlock         TikiAqua
hi! link markdownCodeDelimiter     TikiAqua
hi! link markdownBlockquote        TikiGray
hi! link markdownListMarker        TikiGray
hi! link markdownOrderedListMarker TikiGray
hi! link markdownRule              TikiGray
hi! link markdownHeadingRule       TikiGray
hi! link markdownUrlDelimiter      TikiFg3
hi! link markdownLinkDelimiter     TikiFg3
hi! link markdownLinkTextDelimiter TikiFg3
hi! link markdownHeadingDelimiter  TikiOrange
hi! link markdownUrl               TikiPurple
hi! link markdownUrlTitleDelimiter TikiGreen
hi! link markdownIdDeclaration     markdownLinkText

hi! link vimBracket   TikiYellow
hi! link vimNotation  TikiOrange
hi! link vimBracket   TikiOrange
hi! link vimMapModKey TikiOrange
hi! link vimFuncSID   TikiFg3
hi! link vimSetSep    TikiFg3
hi! link vimSep       TikiFg3
hi! link vimContinue  TikiFg3

" https://github.com/tpope/vim-fugitive
hi! link diffAdded   DiffAdd
hi! link diffRemoved DiffDelete

" https://github.com/w0rp/ale
call s:h("ALEWarningSign", {})
call s:h("ALEErrorSign",   {})
