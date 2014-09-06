" Vim color file
" Converted from Textmate theme CommonSense using Coloration v0.3.3 (http://github.com/sickill/coloration)

set background=dark
highlight clear

if exists("syntax_on")
  syntax reset
endif

let g:colors_name = "CommonSense"

hi Underlined                 ctermfg=NONE  ctermbg=NONE  cterm=underline guifg=NONE  guibg=NONE    gui=underline
hi cssBraces                  ctermfg=NONE  ctermbg=NONE  cterm=NONE      guifg=NONE  guibg=NONE    gui=NONE
hi javaScriptBraces           ctermfg=NONE  ctermbg=NONE  cterm=NONE      guifg=NONE  guibg=NONE    gui=NONE
hi rubyInterpolationDelimiter ctermfg=NONE  ctermbg=NONE  cterm=NONE      guifg=NONE  guibg=NONE    gui=NONE
hi CursorLine                 ctermfg=NONE  ctermbg=12    cterm=NONE      guifg=NONE  guibg=#393b3f gui=NONE
hi CursorColumn               ctermfg=NONE  ctermbg=12    cterm=NONE      guifg=NONE  guibg=#393b3f gui=NONE
hi ColorColumn                ctermfg=NONE  ctermbg=12    cterm=NONE      guifg=NONE  guibg=#393b3f gui=NONE
hi Visual                     ctermfg=NONE  ctermbg=14    cterm=NONE      guifg=NONE  guibg=#384551 gui=NONE
hi PmenuSel                   ctermfg=NONE  ctermbg=14    cterm=NONE      guifg=NONE  guibg=#384551 gui=NONE

hi Conditional        ctermfg=1 ctermbg=NONE  cterm=NONE      guifg=#d6697c guibg=NONE  gui=NONE
hi Define             ctermfg=1 ctermbg=NONE  cterm=NONE      guifg=#d6697c guibg=NONE  gui=NONE
hi Keyword            ctermfg=1 ctermbg=NONE  cterm=NONE      guifg=#d6697c guibg=NONE  gui=NONE
hi Operator           ctermfg=1 ctermbg=NONE  cterm=NONE      guifg=#d6697c guibg=NONE  gui=NONE
hi PreProc            ctermfg=1 ctermbg=NONE  cterm=NONE      guifg=#d6697c guibg=NONE  gui=NONE
hi Statement          ctermfg=1 ctermbg=NONE  cterm=NONE      guifg=#d6697c guibg=NONE  gui=NONE
hi rubyClass          ctermfg=1 ctermbg=NONE  cterm=NONE      guifg=#d6697c guibg=NONE  gui=NONE
hi rubyControl        ctermfg=1 ctermbg=NONE  cterm=NONE      guifg=#d6697c guibg=NONE  gui=NONE
hi rubyInclude        ctermfg=1 ctermbg=NONE  cterm=NONE      guifg=#d6697c guibg=NONE  gui=NONE
hi rubyOperator       ctermfg=1 ctermbg=NONE  cterm=NONE      guifg=#d6697c guibg=NONE  gui=NONE
hi rubyException      ctermfg=1 ctermbg=NONE  cterm=NONE      guifg=#d6697c guibg=NONE  gui=NONE
hi rubyGemfileMethod  ctermfg=1 ctermbg=NONE  cterm=NONE      guifg=#d6697c guibg=NONE  gui=NONE
hi vimIsCommand       ctermfg=1 ctermbg=NONE  cterm=NONE      guifg=#d6697c guibg=NONE  gui=NONE
hi MatchParen         ctermfg=1 ctermbg=NONE  cterm=underline guifg=#d6697c guibg=NONE  gui=underline

hi Constant           ctermfg=11 ctermbg=NONE  cterm=NONE  guifg=#efff92 guibg=NONE  gui=NONE
hi Float              ctermfg=11 ctermbg=NONE  cterm=NONE  guifg=#efff92 guibg=NONE  gui=NONE
hi Number             ctermfg=11 ctermbg=NONE  cterm=NONE  guifg=#efff92 guibg=NONE  gui=NONE
hi cssValueLength     ctermfg=11 ctermbg=NONE  cterm=NONE  guifg=#efff92 guibg=NONE  gui=NONE
hi htmlArg            ctermfg=11 ctermbg=NONE  cterm=NONE  guifg=#efff92 guibg=NONE  gui=NONE
hi htmlEndTag         ctermfg=11 ctermbg=NONE  cterm=NONE  guifg=#efff92 guibg=NONE  gui=NONE
hi coffeeSpecialIdent ctermfg=11 ctermbg=NONE  cterm=NONE  guifg=#efff92 guibg=NONE  gui=NONE

hi Special      ctermfg=7 ctermbg=NONE  cterm=NONE  guifg=#dfdfdf guibg=NONE    gui=NONE
hi cssBraces    ctermfg=7 ctermbg=NONE  cterm=NONE  guifg=#dfdfdf guibg=NONE    gui=NONE
hi Title        ctermfg=7 ctermbg=NONE  cterm=bold  guifg=#dfdfdf guibg=NONE    gui=bold
hi Normal       ctermfg=7 ctermbg=0     cterm=NONE  guifg=#dfdfdf guibg=#26292d gui=NONE
hi DiffChange   ctermfg=7 ctermbg=23    cterm=NONE  guifg=#dfdfdf guibg=#233a5a gui=NONE
hi DiffText     ctermfg=7 ctermbg=24    cterm=bold  guifg=#dfdfdf guibg=#204a87 gui=bold
hi StatusLineNC ctermfg=7 ctermbg=14    cterm=NONE  guifg=#dfdfdf guibg=#5c5e61 gui=NONE
hi StatusLine   ctermfg=7 ctermbg=14    cterm=bold  guifg=#dfdfdf guibg=#5c5e61 gui=bold
hi DiffAdd      ctermfg=7 ctermbg=64    cterm=bold  guifg=#dfdfdf guibg=#46830e gui=bold

hi erubyRailsMethod             ctermfg=10 ctermbg=NONE cterm=NONE guifg=#9ddba5 guibg=NONE gui=NONE
hi javaScriptRailsFunction      ctermfg=10 ctermbg=NONE cterm=NONE guifg=#9ddba5 guibg=NONE gui=NONE
hi rubyRailsMethod              ctermfg=10 ctermbg=NONE cterm=NONE guifg=#9ddba5 guibg=NONE gui=NONE
hi rubyRailsARMethod            ctermfg=10 ctermbg=NONE cterm=NONE guifg=#9ddba5 guibg=NONE gui=NONE
hi rubyRailsRenderMethod        ctermfg=10 ctermbg=NONE cterm=NONE guifg=#9ddba5 guibg=NONE gui=NONE
hi rubyRailsARAssociationMethod ctermfg=10 ctermbg=NONE cterm=NONE guifg=#9ddba5 guibg=NONE gui=NONE

hi rubyClassVariable    ctermfg=2 ctermbg=NONE cterm=NONE guifg=#85cf8e guibg=NONE gui=NONE
hi rubyGlobalVariable   ctermfg=2 ctermbg=NONE cterm=NONE guifg=#85cf8e guibg=NONE gui=NONE
hi rubyPseudoVariable   ctermfg=2 ctermbg=NONE cterm=NONE guifg=#85cf8e guibg=NONE gui=NONE
hi rubyInstanceVariable ctermfg=2 ctermbg=NONE cterm=NONE guifg=#85cf8e guibg=NONE gui=NONE
hi yamlAlias            ctermfg=2 ctermbg=NONE cterm=NONE guifg=#85cf8e guibg=NONE gui=NONE
hi yamlAnchor           ctermfg=2 ctermbg=NONE cterm=NONE guifg=#85cf8e guibg=NONE gui=NONE

hi Comment      ctermfg=8 ctermbg=NONE  cterm=NONE          guifg=#455a65 guibg=NONE    gui=italic
hi erubyComment ctermfg=8 ctermbg=NONE  cterm=NONE          guifg=#455a65 guibg=NONE    gui=italic
hi Todo         ctermfg=8 ctermbg=NONE  cterm=inverse,bold  guifg=#455a65 guibg=NONE    gui=inverse,bold,italic
hi Folded       ctermfg=8 ctermbg=0     cterm=NONE          guifg=#455a65 guibg=#26292d gui=NONE
hi LineNr       ctermfg=8 ctermbg=0     cterm=NONE          guifg=#838486 guibg=#393b3f gui=NONE

hi Directory          ctermfg=5 ctermbg=NONE cterm=NONE guifg=#bcb3dd guibg=NONE gui=NONE
hi Character          ctermfg=5 ctermbg=NONE cterm=NONE guifg=#bcb3dd guibg=NONE gui=NONE
hi cssColor           ctermfg=5 ctermbg=NONE cterm=NONE guifg=#bcb3dd guibg=NONE gui=NONE
hi rubyEscape         ctermfg=5 ctermbg=NONE cterm=NONE guifg=#bcb3dd guibg=NONE gui=NONE
hi rubySymbol         ctermfg=5 ctermbg=NONE cterm=NONE guifg=#bcb3dd guibg=NONE gui=NONE
hi coffeeObjAssign    ctermfg=5 ctermbg=NONE cterm=NONE guifg=#bcb3dd guibg=NONE gui=NONE
hi cssUnitDecorators  ctermfg=5 ctermbg=NONE cterm=NONE guifg=#bcb3dd guibg=NONE gui=NONE

hi Label                ctermfg=13 ctermbg=NONE cterm=NONE guifg=#bc9683 guibg=NONE gui=NONE
hi String               ctermfg=13 ctermbg=NONE cterm=NONE guifg=#bc9683 guibg=NONE gui=NONE
hi rubyStringDelimiter  ctermfg=13 ctermbg=NONE cterm=NONE guifg=#bc9683 guibg=NONE gui=NONE
hi yamlDocumentHeader   ctermfg=13 ctermbg=NONE cterm=NONE guifg=#bc9683 guibg=NONE gui=NONE

hi cssCommonAttr    ctermfg=229 ctermbg=NONE cterm=NONE guifg=#fffeb8 guibg=NONE gui=NONE
hi htmlSpecialChar  ctermfg=229 ctermbg=NONE cterm=NONE guifg=#f4f2a8 guibg=NONE gui=NONE

hi Identifier         ctermfg=3 ctermbg=NONE  cterm=NONE  guifg=#ec9a68 guibg=NONE  gui=italic
hi StorageClass       ctermfg=3 ctermbg=NONE  cterm=NONE  guifg=#ec9a68 guibg=NONE  gui=italic
hi javaScriptFunction ctermfg=3 ctermbg=NONE  cterm=NONE  guifg=#ec9a68 guibg=NONE  gui=italic
hi vimMapModKey       ctermfg=3 ctermbg=NONE  cterm=NONE  guifg=#ec9a68 guibg=NONE  gui=italic
hi vimNotation        ctermfg=3 ctermbg=NONE  cterm=NONE  guifg=#ec9a68 guibg=NONE  gui=italic
hi vimBracket         ctermfg=3 ctermbg=NONE  cterm=NONE  guifg=#ec9a68 guibg=NONE  gui=italic
hi coffeeKeyword      ctermfg=3 ctermbg=NONE  cterm=NONE  guifg=#ec9a68 guibg=NONE  gui=italic
hi coffeeParens       ctermfg=3 ctermbg=NONE  cterm=NONE  guifg=#ec9a68 guibg=NONE  gui=italic
hi coffeeParen        ctermfg=3 ctermbg=NONE  cterm=NONE  guifg=#ec9a68 guibg=NONE  gui=italic
hi hamlId             ctermfg=3 ctermbg=NONE  cterm=NONE  guifg=#ec9a68 guibg=NONE  gui=italic
hi hamlIdChar         ctermfg=3 ctermbg=NONE  cterm=NONE  guifg=#ec9a68 guibg=NONE  gui=italic

hi rubyRegexp           ctermfg=221 ctermbg=NONE cterm=NONE guifg=#ffeb5e guibg=NONE gui=NONE
hi rubyRegexpDelimiter  ctermfg=221 ctermbg=NONE cterm=NONE guifg=#ffeb5e guibg=NONE gui=NONE

hi cssURL             ctermfg=173 ctermbg=NONE cterm=NONE guifg=#d08853 guibg=NONE gui=italic
hi cssFunctionName    ctermfg=173 ctermbg=NONE cterm=NONE guifg=#d08853 guibg=NONE gui=NONE
hi rubyBlockParameter ctermfg=173 ctermbg=NONE cterm=NONE guifg=#d08853 guibg=NONE gui=italic

hi Function     ctermfg=183 ctermbg=NONE  cterm=NONE  guifg=#d8abef guibg=NONE  gui=NONE
hi rubyFunction ctermfg=183 ctermbg=NONE  cterm=NONE  guifg=#d8abef guibg=NONE  gui=NONE

hi ErrorMsg   ctermfg=196 ctermbg=52  cterm=NONE  guifg=#ef1818 guibg=#581f1f gui=NONE
hi WarningMsg ctermfg=196 ctermbg=52  cterm=NONE  guifg=#ef1818 guibg=#581f1f gui=NONE

hi Pmenu      ctermfg=4 ctermbg=NONE  cterm=NONE  guifg=#a4cee6 guibg=NONE  gui=NONE
hi Type       ctermfg=4 ctermbg=NONE  cterm=NONE  guifg=#a4cee6 guibg=NONE  gui=NONE
hi vimOption  ctermfg=4 ctermbg=NONE  cterm=NONE  guifg=#a4cee6 guibg=NONE  gui=NONE

hi cssClassName     ctermfg=155 ctermbg=NONE cterm=NONE guifg=#c3f660 guibg=NONE gui=NONE
hi sassClass        ctermfg=155 ctermbg=NONE cterm=NONE guifg=#c3f660 guibg=NONE gui=NONE
hi sassClassChar    ctermfg=155 ctermbg=NONE cterm=NONE guifg=#c3f660 guibg=NONE gui=NONE
hi cssPseudoClassId ctermfg=155 ctermbg=NONE cterm=NONE guifg=#c3f660 guibg=NONE gui=NONE

hi IncSearch  ctermfg=0 ctermbg=138 cterm=NONE  guifg=#26292d guibg=#bc9683 gui=NONE
hi Cursor     ctermfg=0 ctermbg=231 cterm=NONE  guifg=#26292d guibg=#f8f8f8 gui=NONE
hi Search     ctermfg=0  ctermbg=138   cterm=NONE guifg=NONE  guibg=#ebd1af gui=underline

hi erubyDelimiter         ctermfg=6 ctermbg=NONE  cterm=NONE  guifg=#dfdfdf guibg=NONE  gui=NONE
hi sassProperty           ctermfg=6 ctermbg=NONE  cterm=NONE  guifg=#dfdfdf guibg=NONE  gui=NONE
hi cssProp                ctermfg=6 ctermbg=NONE  cterm=NONE  guifg=#dfdfdf guibg=NONE  gui=NONE
hi cssAttr                ctermfg=6 ctermbg=NONE  cterm=NONE  guifg=#dfdfdf guibg=NONE  gui=NONE
hi hamlRubyOutputChar     ctermfg=6 ctermbg=NONE  cterm=NONE  guifg=#dfdfdf guibg=NONE  gui=NONE
hi hamlRailsHelperMethod  ctermfg=6 ctermbg=NONE  cterm=NONE  guifg=#dfdfdf guibg=NONE  gui=NONE

hi Tag            ctermfg=139 ctermbg=NONE  cterm=NONE  guifg=#a3859e guibg=NONE  gui=NONE
hi yamlKey        ctermfg=139 ctermbg=NONE  cterm=NONE  guifg=#a3859e guibg=NONE  gui=NONE
hi htmlTagName    ctermfg=139 ctermbg=NONE  cterm=NONE  guifg=#a3859e guibg=NONE  gui=NONE
hi hamlClass      ctermfg=139 ctermbg=NONE  cterm=NONE  guifg=#a3859e guibg=NONE  gui=NONE
hi hamlClassChar  ctermfg=139 ctermbg=NONE  cterm=NONE  guifg=#a3859e guibg=NONE  gui=NONE

hi SpecialKey   ctermfg=16  ctermbg=12  cterm=NONE  guifg=#1f2223 guibg=#393b3f gui=NONE
hi NonText      ctermfg=16  ctermbg=0   cterm=NONE  guifg=#1f2223 guibg=#2f3236 gui=NONE

hi rubyConstant       ctermfg=116 ctermbg=NONE cterm=NONE guifg=#8ee1dd guibg=NONE gui=italic
hi rubyRailsUserClass ctermfg=116 ctermbg=NONE cterm=NONE guifg=#8ee1dd guibg=NONE gui=italic

hi Boolean      ctermfg=73  ctermbg=NONE  cterm=NONE  guifg=#67ad9d guibg=NONE  gui=NONE
hi htmlTag      ctermfg=73  ctermbg=NONE  cterm=NONE  guifg=#67ad9d guibg=NONE  gui=NONE
hi hamlTag      ctermfg=73  ctermbg=NONE  cterm=NONE  guifg=#67ad9d guibg=NONE  gui=NONE
hi htmlEndTag   ctermfg=73  ctermbg=NONE  cterm=NONE  guifg=#67ad9d guibg=NONE  gui=NONE

hi DiffDelete   ctermfg=88  ctermbg=NONE  cterm=NONE  guifg=#8b0809 guibg=NONE    gui=NONE
hi VertSplit    ctermfg=14  ctermbg=14    cterm=NONE  guifg=#5c5e61 guibg=#5c5e61 gui=NONE

