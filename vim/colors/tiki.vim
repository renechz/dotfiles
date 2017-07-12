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
    \ "gui="     (has_key(a:style, "style") ? a:style.style : "NONE")
    \ "cterm="   (has_key(a:style, "style") ? a:style.style : "NONE")
endfunction

let s:tiki = {
\   "bg0":       { "dark": "#1f222f", "light": "#e8eaf6" },
\   "bg1":       { "dark": "#292d3e", "light": "#d9dced" },
\   "bg2":       { "dark": "#33384d", "light": "#c7cde5" },
\   "bg3":       { "dark": "#3d435d", "light": "#b6bddc" },
\   "bg4":       { "dark": "#474e6c", "light": "#a5add4" },
\   "fg0":       { "dark": "#fbfcfd", "light": "#15171f" },
\   "fg1":       { "dark": "#eaecf5", "light": "#1f222e" },
\   "fg2":       { "dark": "#d9dcec", "light": "#292d3d" },
\   "fg3":       { "dark": "#c8cce4", "light": "#34394c" },
\   "fg4":       { "dark": "#b7bcdc", "light": "#3e445c" },
\   "gray":      { "dark": "#676e95", "light": "#a8b0d5" },
\   "red":       { "dark": "#ff5370", "light": "#e53935" },
\   "pink":      { "dark": "#ff80ab", "light": "#ff5370" },
\   "orange":    { "dark": "#f78c6c", "light": "#f76d47" },
\   "yellow":    { "dark": "#ffcb6b", "light": "#ff6f00" },
\   "green":     { "dark": "#c3e88d", "light": "#91b859" },
\   "blue_pale": { "dark": "#b2ccd6", "light": "#8796b0" },
\   "aqua":      { "dark": "#89ddff", "light": "#39adb5" },
\   "blue":      { "dark": "#82aaff", "light": "#6182b8" },
\   "purple":    { "dark": "#c792ea", "light": "#7c4dff" },
\   "violet":    { "dark": "#bb80b3", "light": "#945eb8" },
\   "brown":     { "dark": "#ab7967", "light": "#ab7967" },
\ }

if s:is_dark
  let s:theme = "dark"
  set background=dark
else
  let s:theme = "light"
  set background=light
endif

call s:h("Normal", { "fg": s:tiki.fg1[s:theme], "bg": s:tiki.bg0[s:theme] })

call s:h("TikiFg0",           { "fg": s:tiki.fg0[s:theme] })
call s:h("TikiFg1",           { "fg": s:tiki.fg1[s:theme] })
call s:h("TikiFg2",           { "fg": s:tiki.fg2[s:theme] })
call s:h("TikiFg3",           { "fg": s:tiki.fg3[s:theme] })
call s:h("TikiFg4",           { "fg": s:tiki.fg4[s:theme] })
call s:h("TikiBg0",           { "fg": s:tiki.bg0[s:theme] })
call s:h("TikiBg1",           { "fg": s:tiki.bg1[s:theme] })
call s:h("TikiBg2",           { "fg": s:tiki.bg2[s:theme] })
call s:h("TikiBg3",           { "fg": s:tiki.bg3[s:theme] })
call s:h("TikiBg4",           { "fg": s:tiki.bg4[s:theme] })
call s:h("TikiGray",          { "fg": s:tiki.gray[s:theme] })
call s:h("TikiRed",           { "fg": s:tiki.red[s:theme] })
call s:h("TikiPink",          { "fg": s:tiki.pink[s:theme] })
call s:h("TikiOrange",        { "fg": s:tiki.orange[s:theme] })
call s:h("TikiYellow",        { "fg": s:tiki.yellow[s:theme] })
call s:h("TikiGreen",         { "fg": s:tiki.green[s:theme] })
call s:h("TikiBluePale",      { "fg": s:tiki.blue_pale[s:theme] })
call s:h("TikiAqua",          { "fg": s:tiki.aqua[s:theme] })
call s:h("TikiBlue",          { "fg": s:tiki.blue[s:theme] })
call s:h("TikiPurple",        { "fg": s:tiki.purple[s:theme] })
call s:h("TikiViolet",        { "fg": s:tiki.violet[s:theme] })
call s:h("TikiBrown",         { "fg": s:tiki.brown[s:theme] })
call s:h("TikiNone",          {})
call s:h("TikiOrangeBold",    { "fg": s:tiki.orange[s:theme], "style": "bold" })
call s:h("TikiAquaBold",      { "fg": s:tiki.aqua[s:theme],   "style": "bold" })
call s:h("TikiGreenBold",     { "fg": s:tiki.green[s:theme],  "style": "bold" })
call s:h("TikiYellowBold",    { "fg": s:tiki.yellow[s:theme], "style": "bold" })
call s:h("TikiFg1Bold",       { "fg": s:tiki.fg1[s:theme],    "style": "bold" })
call s:h("TikiAquaItalic",    { "fg": s:tiki.aqua[s:theme],   "style": "italic" })
call s:h("TikiOrangeItalic",  { "fg": s:tiki.orange[s:theme], "style": "italic" })
call s:h("TikiPurpleItalic",  { "fg": s:tiki.purple[s:theme], "style": "italic" })
call s:h("TikiPinkUnderline", { "fg": s:tiki.pink[s:theme],   "style": "underline" })
call s:h("TikiYellowItalic",    { "fg": s:tiki.yellow[s:theme], "style": "italic" })

call s:h("ColorColumn",  { "bg": s:tiki.bg1[s:theme] })
call s:h("CursorLine",   { "bg": s:tiki.bg1[s:theme] })
call s:h("CursorColumn", { "bg": s:tiki.bg1[s:theme] })

call s:h("Visual",       { "bg": s:tiki.bg4[s:theme] })
call s:h("VisualNOS",    { "bg": s:tiki.bg4[s:theme] })
call s:h("IncSearch",    { "fg": s:tiki.bg0[s:theme],  "bg": s:tiki.orange[s:theme] })
call s:h("Search",       { "fg": s:tiki.bg0[s:theme],  "bg": s:tiki.green[s:theme] })
call s:h("WildMenu",     { "fg": s:tiki.bg4[s:theme],  "bg": s:tiki.aqua[s:theme] })
call s:h("StatusLine",   { "fg": s:tiki.aqua[s:theme], "bg": s:tiki.bg4[s:theme] })
call s:h("StatusLineNC", { "fg": s:tiki.bg2[s:theme],  "bg": s:tiki.fg4[s:theme], "style": "bold,inverse" })

call s:h("Pmenu",        { "fg": s:tiki.fg1[s:theme],  "bg": s:tiki.bg1[s:theme] })
call s:h("PmenuSbar",    { "fg": s:tiki.bg3[s:theme],  "bg": s:tiki.bg3[s:theme] })
call s:h("PmenuSel",     { "fg": s:tiki.bg1[s:theme],  "bg": s:tiki.aqua[s:theme] })
call s:h("PmenuThumb",   { "fg": s:tiki.aqua[s:theme], "bg": s:tiki.aqua[s:theme] })

call s:h("DiffAdd",      { "fg": s:tiki.bg0[s:theme], "bg": s:tiki.green[s:theme] })
call s:h("DiffChange",   { "fg": s:tiki.bg0[s:theme], "bg": s:tiki.blue_pale[s:theme] })
call s:h("DiffDelete",   { "fg": s:tiki.bg0[s:theme], "bg": s:tiki.red[s:theme] })
call s:h("DiffText",     { "fg": s:tiki.bg0[s:theme], "bg": s:tiki.blue[s:theme] })
call s:h("ErrorMsg",     { "fg": s:tiki.fg0[s:theme], "bg": s:tiki.red[s:theme] })

hi! link Error          TikiPink
hi! link WarningMsg     ErrorMsg
hi! link SpellBad       TikiRed
hi! link SpellCap       TikiRed
hi! link Todo           TikiRed
hi! link MatchParen     TikiPinkUnderline
hi! link Directory      TikiPurple
hi! link Folded         TikiAqua
hi! link FoldColumn     TikiAqua
hi! link Question       TikiAqua
hi! link MoreMsg        TikiAqua
hi! link ModeMsg        TikiAqua
hi! link LineNr         TikiBg4
hi! link VertSplit      TikiBg4
hi! link EndOfBuffer    TikiBg1
hi! link Conceal        TikiBg3
hi! link CursorLineNr   TikiYellow
hi! link NonText        TikiOrange
hi! link SpecialKey     TikiOrange
hi! link Title          TikiOrange
hi! link SignColumn     TikiBg0

call s:h("Underlined", { "fg": s:tiki.violet[s:theme], "style": "underline" })

call s:h("Cursor", { "style": "inverse" })
hi! link vCursor Cursor
hi! link iCursor Cursor
hi! link lCursor Cursor

call s:h("Comment", { "fg": s:tiki.gray[s:theme], "style": "italic" })

hi! link Constant     TikiPurple
hi! link String       TikiYellow
hi! link Identifier   TikiAquaItalic
hi! link Function     TikiGreen
hi! link Statement    TikiPink
hi! link Label        TikiYellow
hi! link PreProc      TikiPink
hi! link Type         TikiAqua
hi! link StorageClass TikiAquaItalic
hi! link Special      TikiFg1
hi! link Tag          TikiPink

hi! link NonText      TikiFg4
hi! link SpecialKey   TikiFg4
hi! link Title        TikiFg1Bold

hi! link rubyClass                    TikiPink
hi! link rubyClassName                TikiAqua
hi! link rubyFunction                 TikiGreen
hi! link rubyInterpolationDelimiter   TikiPink
hi! link rubySymbol                   TikiPurple
hi! link rubyConstant                 TikiAquaItalic
hi! link rubyStringDelimiter          TikiYellow
hi! link rubyBlockParameter           TikiOrangeItalic
hi! link rubyInstanceVariable         TikiPurpleItalic
hi! link rubyInclude                  TikiPink
hi! link rubyGlobalVariable           TikiNone
hi! link rubyRegexp                   TikiYellow
hi! link rubyRegexpDelimiter          TikiYellow
hi! link rubyEscape                   TikiPurple
hi! link rubyControl                  TikiPink
hi! link rubyClassVariable            TikiNone
hi! link rubyOperator                 TikiPink
hi! link rubyException                TikiPink
hi! link rubyPseudoVariable           TikiPurple
hi! link rubyRailsUserClass           TikiAquaItalic
hi! link rubyRailsARAssociationMethod TikiAqua
hi! link rubyRailsARMethod            TikiAqua
hi! link rubyRailsRenderMethod        TikiAqua
hi! link rubyRailsMethod              TikiAqua
hi! link rubySharpBang                Comment
hi! link rubyPredefinedConstant       TikiPurple
hi! link erubyDelimiter               TikiNone
hi! link erubyComment                 Comment
hi! link erubyRailsMethod             TikiAqua

hi! link htmlTag            TikiNone
hi! link htmlEndTag         TikiNone
hi! link htmlTagName        TikiPink
hi! link htmlSpecialTagName TikiPink
hi! link htmlArg            TikiGreen
hi! link htmlSpecialChar    TikiPurple
hi! link htmlBold           TikiOrangeBold
hi! link htmlItalic         TikiYellowItalic
hi! link htmlH1             TikiPurpleBold

hi! link jsGlobalObjects TikiAquaItalic
hi! link jsStorageClass  TikiPink
hi! link jsFunction      TikiPink
hi! link jsFuncArgs      TikiOrangeItalic
hi! link jsFuncCall      TikiGreen
hi! link jsPrototype     TikiFg1
hi! link jsObjectProp    TikiGreen
hi! link jsOperator      TikiPink
hi! link jsReturn        TikiPink
hi! link jsThis          TikiPurpleItalic

hi! link yamlKey            TikiRed
hi! link yamlAnchor         TikiNone
hi! link yamlAlias          TikiNone
hi! link yamlDocumentHeader TikiYellow

hi! link cssBraces         TikiNone
hi! link cssClassName      TikiGreen
hi! link cssColor          TikiPurple
hi! link cssCommonAttr     TikiAqua
hi! link cssFontDescriptor TikiPink
hi! link cssFunctionName   TikiAqua
hi! link cssMediaType      TikiPurple
hi! link cssPseudoClassId  TikiGreen
hi! link cssURL            TikiOrangeItalic
hi! link cssValueLength    TikiPurple
hi! link cssProp           TikiAqua
hi! link cssNoise          TikiPink
hi! link cssUnitDecorators TikiPink
hi! link cssPagePseudo     TikiGreen

hi! link elixirAtom                   TikiAquaItalic
hi! link elixirModuleDeclaration      TikiAquaItalic
hi! link elixirAlias                  TikiAquaItalic
hi! link elixirInterpolationDelimiter TikiPink
hi! link elixirStringDelimiter        TikiYellow

hi! link vimGroupName TikiAqua
hi! link vimGroup     TikiAqua
hi! link vimOption    TikiAqua

hi! link markdownBlockquote        TikiGreen
hi! link markdownCode              TikiYellow
hi! link markdownCodeBlock         TikiYellow
hi! link markdownCodeDelimiter     TikiYellow
hi! link markdownH1                TikiPurpleBold
hi! link markdownH2                TikiPurpleBold
hi! link markdownH3                TikiPinkBold
hi! link markdownH4                TikiPinkBold
hi! link markdownH5                TikiPinkBold
hi! link markdownH6                TikiPinkBold
hi! link markdownHeadingDelimiter  TikiAquaBold
hi! link markdownHeadingRule       TikiGreen
hi! link markdownLinkDelimiter     TikiOrangeItalic
hi! link markdownLinkTextDelimiter TikiOrangeItalic
hi! link markdownListMarker        TikiGreen
hi! link markdownOrderedListMarker TikiGreen
hi! link markdownRule              TikiGreen
hi! link markdownUrl               TikiPurple
hi! link markdownUrlDelimiter      TikiOrangeItalic
hi! link markdownUrlTitleDelimiter TikiGreen
hi! link mkdListItem               TikiAqua
hi! link mkdCode                   TikiGreen
hi! link mkdInlineURL              TikiPink

" hi! link netrwPlain    TikiAqua
" hi! link netrwDir      TikiAqua
" hi! link netrwExe      TikiBlue
" hi! link netrwClassify TikiOrange
" hi! link netrwVersion  TikiOrange

" hi! link shDerefSimple  TikiAqua
" hi! link shFunction     TikiBlue
" hi! link shCmdSubRegion TikiYellow
" hi! link shFunctionKey  TikiGreen

" " https://github.com/tpope/vim-fugitive
hi! link diffAdded   DiffAdd
hi! link diffRemoved DiffDelete

" https://github.com/w0rp/ale
call s:h("ALEWarningSign", {})
call s:h("ALEErrorSign",   {})
