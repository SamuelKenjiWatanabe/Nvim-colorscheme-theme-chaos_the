" ##############################################################################
" Name:       chaos_the
" Autor:      SKW
" Data:       10/02/2024
" A verdadeira forma de ver a linguagem:
" pt-br
"
"    _____                         _____
" ,_-@@@@@-_,     _       _     ,_-@@@@@-_,
".@@@@@@@@@@@)_    ``   ´´    _(@@@@@@@@@@@.
" "".@@@(*)@@@@-     !-!     -@@@@(*)@@@.""
"    !@@<I>@@@@@-__-"###"-__-@@@@@<I>@@!
"    !@@@@@@@@@@@@@!##I##!@@@@@@@@@@@@@!
"     "@@@@@@@@@@@@!#<I>#!@@@@@@@@@@@@"
"      "@@"!@@@@@@@!##I##!@@@@@@@!"@@"
"	   "@@@@@@@!##I##!@@@@@@@"
"	  '@@@@@@@! !#@#! !@@@@@@@'
"        '@@@@@@@@!  !#!  !@@@@@@@@'
"	  "@@(*)@@@.  '  .@@@(*)@@"
"          "@@@@@@@@,   ,@@@@@@@@"
"	    "!@@@@@@!   !@@@@@@!"
"             """"""     """"""
" ______________________________________________________________________________

highlight clear

if exists('syntax_on')
  syntax reset
endif

set background=dark

if &term == 'screen'
  set t_Co=256
endif

let g:colors_name = 'chaos_the'

"_____________________-------------------_____________________--set_basic_colors


"__________________________-------------------_______________________--set_style
if !exists('g:chaos_the_bold')
  let g:chaos_the_bold = 1
endif

if !exists('g:chaos_the_italic')
  let g:chaos_the_italic = 1
endif

if !exists('g:chaos_the_underline')
  let g:chaos_the_underline = 1
endif

if !exists('g:chaos_the_undercurl') && g:chaos_the_underline != 0
  let g:chaos_the_undercurl = 1
endif

if !exists('g:chaos_the_inverse')
  let g:chaos_the_inverse = 1
endif

let s:styles = {
      \ 'bold':      g:chaos_the_bold == 1 ? 'bold' : 0,
      \ 'italic':    g:chaos_the_italic == 1 ? 'italic' : 0,
      \ 'underline': g:chaos_the_underline == 1 ? 'underline' : 0,
      \ 'undercurl': g:chaos_the_undercurl == 1 ? 'undercurl' : 0,
      \ 'inverse':   g:chaos_the_inverse == 1 ? 'inverse' : 0,
      \ }


"________________________________________--------------------________--set_cores
"

" Comentário
highlight Comment        guifg=#848484 gui=italic      ctermfg=8   cterm=italic      ctermbg=0

" Sintaxe
highlight Constant       guifg=#00ff87                 ctermfg=48
highlight String         guifg=#afff5f                 ctermfg=155
highlight Character      guifg=#4e9a06                 ctermfg=131
highlight Number         guifg=#af005f                 ctermfg=125
highlight Boolean        guifg=#4e9a06                 ctermfg=2
highlight Float          guifg=#d55e00                 ctermfg=3

highlight Identifier     guifg=#c4a000 gui=italic      ctermfg=198  cterm=italic
highlight Function       guifg=#afffd7                 ctermfg=158

highlight Statement      guifg=#06989a gui=italic      ctermfg=6    cterm=italic
highlight Conditional    guifg=#4e9a06 gui=italic      ctermfg=2    cterm=italic
highlight Repeat         guifg=#06989a gui=italic      ctermfg=6    cterm=italic
highlight Label          guifg=#7f0055 gui=italic      ctermfg=5    cterm=italic
highlight Operator       guifg=#4e9a06                 ctermfg=2

"mude keyword porque interfere na linguagem ada ;-;...
highlight Keyword        guifg=#ffaf00 gui=italic      ctermfg=214  cterm=italic
highlight Exception      guifg=#cc0000 gui=italic      ctermfg=52   cterm=italic

highlight PreProc        guifg=#ad7fa8                 ctermfg=8
highlight Include        guifg=#ad7fa8                 ctermfg=135
highlight Define         guifg=#0000ff                 ctermfg=21
highlight Macro          guifg=#87ffd7                 ctermfg=122
highlight PreCondit      guifg=#ff005f                 ctermfg=197

highlight Type           guifg=#ff5faf gui=italic      ctermfg=205  cterm=italic
highlight StorageClass   guifg=#f57900 gui=italic      ctermfg=27   cterm=italic
highlight Structure      guifg=#f57900 gui=italic      ctermfg=38   cterm=italic
highlight Typedef        guifg=#f57900 gui=italic      ctermfg=44   cterm=italic

highlight Special        guifg=#ad7fa8                 ctermfg=5
highlight SpecialChar    guifg=#ad7fa8 gui=underline   ctermfg=5    cterm=underline
highlight Tag            guifg=#ad7fa8 gui=underline   ctermfg=5    cterm=underline
highlight Delimiter      guifg=#ad7fa8                 ctermfg=5
highlight SpecialComment guifg=#ad7fa8 gui=italic      ctermfg=5    cterm=italic
highlight Debug          guifg=#cc0000                 ctermfg=17

highlight Underlined     guifg=#b4b400                 ctermfg=255 "
highlight ignore         guibg=#000000                 ctermbg=255 "
highlight Error          guifg=#ffffff guibg=#a40000   ctermfg=255  ctermbg=160
highlight Todo           guifg=#5f005f guibg=#00d787   ctermfg=53   ctermbg=42

" Destacando Grupos
highlight Colorcolumn    guibg=#000000                 ctermbg=255 "
highlight Conceal        guibg=#000000                 ctermbg=255 "
 
highlight Cursor         guifg=#000000 guibg=#ffffff   ctermfg=198  ctermbg=16
 
highlight CursorIM       guibg=#a40000                 ctermbg=105
highlight CursorColumn   guibg=#000000                 ctermbg=0

highlight CursorLine                   gui=underline                cterm=underline
highlight Directory      guifg=#5c35cc                 ctermfg=225
highlight ErrorMsg       guifg=#ffffff guibg=#a40000   ctermfg=255  ctermbg=5
highlight VertSplit      guifg=#a40000                 ctermfg=105
highlight Folded         guifg=#cc0000                 ctermfg=10

highlight FoldColumn     guibg=#000000                 ctermbg=22
highlight SignColumn     guibg=#000000                 ctermbg=255

highlight IncSearch      guifg=#a40000 guibg=#ffffff   ctermfg=255  ctermbg=16
highlight LineNr         guifg=#73d216                 ctermfg=104
highlight CursorLineNr   guifg=#73d216                 ctermfg=10
highlight MatchParen                   gui=underline                cterm=underline  ctermbg=0

highlight ModeMsg        guibg=#000000                 ctermbg=255 "
highlight MoreMsg        guibg=#000000                 ctermbg=255 "

highlight NonText        guifg=#ffd7ff                 ctermfg=5

highlight Normal         guibg=#000000                 ctermbg=0

highlight Pmenu          guibg=#d7ffd7                 ctermbg=194
highlight PmenuSel       guifg=#000000 guibg=#73d216   ctermfg=229  ctermbg=54
highlight PmenuSbar      guibg=#000000                 ctermbg=214
highlight PmenuThumb     guibg=#ffffff                 ctermbg=15
highlight Question       guifg=#73d216                 ctermfg=10
highlight Search         guifg=#a40000 guibg=#ffffff   ctermfg=105  ctermbg=16
highlight QuickFixLine   guifg=#ffffff guibg=#a40000   ctermfg=255  ctermbg=5
highlight SpecialKey     guifg=#5c35cc                 ctermfg=5
highlight SpellBad                     gui=underline                cterm=underline
highlight SpellCap       guifg=#a40000                 ctermfg=105
highlight SpellLocal     guifg=#a40000                 ctermfg=15
highlight SpellRare      guifg=#a40000                 ctermfg=5
highlight StatusLine     guifg=#5c35cc guibg=#000000   ctermfg=10   ctermbg=255
highlight StatusLineNC   guifg=#000000                 ctermfg=2
highlight TabLine        guifg=#5c35cc                 ctermfg=5

highlight TabLineFill    guibg=#ffff87                 ctermbg=228

highlight TabLineSel     guifg=#afd7af                 ctermfg=151
highlight Title          guifg=#afffd7                 ctermfg=158
highlight Visual         guifg=#000000 guibg=#ffffff   ctermfg=0    ctermbg=255
highlight VisualNos      guibg=#5f5fd7                 ctermbg=62

highlight WarningMsg     guifg=#fce94f                 ctermfg=255
highlight WildMenu       guifg=#000000 guibg=#73d216   ctermfg=17   ctermbg=255



"LINGUAGEM ADA [gnat]

let g:ada_highlight_keywords = {
    \ 'Keyword': ['abort', 'else', 'new', 'return', 'elsif', 'out', 'reverse', 'end', 'in', 'accept', 'entry', 'if', 'of', 'while', 'and', 'is', 'or', 'xor', 'array', 'for', 'limited', 'others', 'procedure', 'body', 'function', 'tagged', 'use', 'case', 'goto', 'type', 'constant', 'loop', 'until', 'declare', 'access', 'subtype', 'private', 'protected', 'separate', 'range', 'record', 'package', 'synchronized', 'protected', 'task', 'protected', 'is', 'task', 'is'],
    \ }

highlight AdaComment        guifg=#ffff00 gui=italic    ctermfg=227  cterm=italic ctermbg=2  guibg=#002055
highlight AdaConstant       guifg=#00ff87               ctermfg=48
highlight AdaString         guifg=#afff5f               ctermfg=84
highlight AdaCharacter      guifg=#4e9a06               ctermfg=131
highlight AdaNumber         guifg=#af005f               ctermfg=50
highlight AdaBoolean        guifg=#4e9a06               ctermfg=21
highlight AdaFloat          guifg=#d55e00               ctermfg=220
highlight AdaIdentifier     guifg=#c4a000 gui=italic    ctermfg=198 cterm=italic
highlight AdaFunction       guifg=#afffd7               ctermfg=204
highlight AdaStatement      guifg=#06989a gui=italic    ctermfg=57  cterm=italic
highlight AdaConditional    guifg=#4e9a06 gui=italic    ctermfg=46  cterm=italic
highlight AdaRepeat         guifg=#06989a gui=italic    ctermfg=75  cterm=italic
highlight AdaLabel          guifg=#7f0055 gui=italic    ctermfg=51  cterm=italic
highlight AdaOperator       guifg=#4e9a06               ctermfg=193
highlight AdaKeyword        guifg=#cc0000 gui=italic    ctermfg=198 cterm=italic
highlight AdaBeginEnd       guifg=#4e9a06               ctermfg=2
highlight AdaException      guifg=#cc0000 gui=italic    ctermfg=49  cterm=italic
highlight AdaPreProc        guifg=#ad7fa8               ctermfg=82
highlight AdaInclude        guifg=#ad7fa8               ctermfg=135
highlight AdaDefine         guifg=#0000ff               ctermfg=39
highlight AdaMacro          guifg=#87ffd7               ctermfg=122
highlight AdaPreCondit      guifg=#ff005f               ctermfg=197
highlight AdaType           guifg=#ff5faf gui=italic    ctermfg=205 cterm=italic
highlight AdaStorageClass   guifg=#f57900 gui=italic    ctermfg=27  cterm=italic
highlight AdaStructure      guifg=#f57900 gui=italic    ctermfg=38  cterm=italic
highlight AdaTypedef        guifg=#f57900 gui=italic    ctermfg=44  cterm=italic
highlight AdaSpecial        guifg=#ad7fa8               ctermfg=194
highlight AdaSpecialChar    guifg=#ad7fa8 gui=underline ctermfg=209 cterm=underline
highlight AdaTag            guifg=#ad7fa8 gui=underline ctermfg=118 cterm=underline
highlight AdaDelimiter      guifg=#ad7fa8               ctermfg=99
highlight AdaSpecialComment guifg=#ad7fa8 gui=italic    ctermfg=222 cterm=italic
highlight AdaDebug          guifg=#cc0000               ctermfg=55
highlight AdaUnderlined     guifg=#b4b400               ctermfg=171
highlight AdaIgnore         guibg=#000000               ctermbg=42
highlight AdaError          guifg=#ffffff guibg=#a40000 ctermfg=255 ctermbg=160
highlight AdaTodo           guifg=#5f005f guibg=#00d787 ctermfg=53  ctermbg=42
highlight AdaAssignment     guifg=#ff0000 guibg=#ffffff ctermfg=196 ctermbg=255
highlight AdaAttribute      guifg=#ffff5f gui=italic    ctermfg=227 cterm=italic


syntax match AdaAssignment /:=/


highlight link AdaBeginEnd AdaKeyword


"LINGUAGEM FORTH [gforth]
"syntax clear

" Define highlighting para paralavras em Forth
highlight ForthWord         guifg=#ffcc00 guibg=NONE    ctermfg=122    ctermbg=NONE
highlight ForthDefinedWord  guifg=#ffcc00 guibg=NONE    ctermfg=122    ctermbg=NONE
highlight ForthComment      guifg=#ffd7af guibg=NONE    ctermfg=230    ctermbg=NONE   cterm=italic
highlight ForthConstant     guifg=#ff00ff guibg=NONE    ctermfg=165    ctermbg=NONE
highlight ForthLiteral      guifg=#00ffff guibg=NONE    ctermfg=124    ctermbg=NONE
highlight ForthFunction     guifg=#00ff00 guibg=NONE    ctermfg=47     ctermbg=NONE
highlight ForthDefinition   guifg=#00ff00 guibg=NONE    ctermfg=225    ctermbg=NONE
highlight ForthInclude	    guifg=#00ff00 guibg=NONE    ctermfg=200    ctermbg=NONE
highlight ForthMacro        guifg=#ff0000 guibg=NONE    ctermfg=196    ctermbg=NONE
highlight ForthLocalVar     guifg=#00d787 guibg=NONE    ctermfg=227    ctermbg=NONE
highlight ForthInactiveWord guifg=#999999 guibg=NONE    ctermfg=255    ctermbg=NONE

highlight ForthString       guifg=#87ff87 guibg=NONE    ctermfg=49     ctermbg=NONE
highlight ForthNumber       guifg=#ff0000 guibg=NONE    ctermfg=196    ctermbg=NONE
highlight ForthOperator     guifg=#ff00ff guibg=NONE    ctermfg=165    ctermbg=NONE
highlight ForthEOLComment   guifg=#666666 guibg=NONE    ctermfg=230    ctermbg=NONE
highlight ForthCompileOnly  guifg=#ff00ff guibg=NONE    ctermfg=165    ctermbg=NONE



"__________________________________________--------------------________--Plugins
" fzf.vim
let g:fzf_colors =
\ { 'fg':      ['fg', 'Normal'],
  \ 'bg':      ['bg', 'Normal'],
  \ 'hl':      ['fg', 'String'],
  \ 'hl+':     ['fg', 'Statement'],
  \ 'fg+':     ['fg', 'CursorLine', 'CursorColumn', 'Normal'],
  \ 'bg+':     ['bg', 'CursorLine', 'CursorColumn'],
  \ 'info':    ['fg', 'Keyword'],
  \ 'border':  ['fg', 'Ignore'],
  \ 'prompt':  ['fg', 'Statement'],
  \ 'pointer': ['fg', 'Statement'],
  \ 'marker':  ['fg', 'Keyword'],
  \ 'spinner': ['fg', 'Label'],
  \ 'header':  ['fg', 'Comment'] }

" Configurações de cores para o EasyMotion
highlight EasyMotionTarget             guifg=#5c35cc   ctermfg=5
highlight EasyMotionTarget2First       guifg=#73d216   ctermfg=10
highlight EasyMotionTarget2Second      guifg=#87afaf   ctermfg=109
highlight EasyMotionShade              guifg=#5c35cc   ctermfg=5

" Configurações de cores para o GitSigns
highlight GitSignsAdd                  guifg=#325288   ctermfg=19
highlight GitSignsChange               guifg=#73d216   ctermfg=10
highlight GitSignsDelete               guifg=#a40000   ctermfg=19
" }}}

" Try setting background and foreground colors if user using GUI version
if has("gui_running") || exists('g:GuiLoaded')
    hi Normal guifg=#ffffff
    hi Normal guibg=#111114
endif

execute 'set background=dark'