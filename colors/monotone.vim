"
" m o n o t o n e
"
"
" Copyright 2018 Kim Silkebækken
"
" Permission is hereby granted, free of charge, to any person obtaining a copy
" of this software and associated documentation files (the "Software"), to
" deal in the Software without restriction, including without limitation the
" rights to use, copy, modify, merge, publish, distribute, sublicense, and/or
" sell copies of the Software, and to permit persons to whom the Software is
" furnished to do so, subject to the following conditions:
"
" The above copyright notice and this permission notice shall be included in
" all copies or substantial portions of the Software.
"
" THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
" IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
" FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
" AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
" LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING
" FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS
" IN THE SOFTWARE.

set background=dark

hi clear
syntax reset

hi  Normal  guifg=#d0d0d0  guibg=#141210  gui=NONE    ctermfg=252  ctermbg=233  cterm=NONE
hi  Visual  guifg=#000000  guibg=#aaaaaa  ctermfg=16  ctermbg=248

" Normal cursor
hi  Cursor   guibg=#ff4444  ctermbg=203
" Insert cursor
hi  CursorI  guibg=#ffffff  ctermbg=255
" Replace cursor
hi  CursorR  guibg=#ff4444  ctermbg=203
" Operator-pending cursor
hi  CursorO  guibg=#00afff  ctermbg=39

" UI/special
hi  ColorColumn   guifg=NONE     guibg=#191817  gui=NONE    ctermfg=NONE  ctermbg=234   cterm=NONE
hi  CursorLine    guifg=NONE     guibg=#191817  gui=NONE    ctermfg=NONE  ctermbg=234   cterm=NONE
hi  CursorLineNr  guifg=NONE     guibg=#252322  gui=NONE    ctermfg=NONE  ctermbg=235   cterm=NONE
hi  Error         guifg=#ff4444  guibg=NONE     gui=bold    ctermfg=203   ctermbg=NONE  cterm=bold
hi  ErrorMsg      guifg=#ff4444  guibg=NONE     gui=bold    ctermfg=203   ctermbg=NONE  cterm=bold
hi  Folded        guifg=NONE     guibg=#252322  gui=italic  ctermfg=NONE  ctermbg=235   cterm=italic
hi  LineNr        guifg=#555555  guibg=NONE     gui=NONE    ctermfg=240   ctermbg=NONE  cterm=NONE
hi  MoreMsg       guifg=#00afff  guibg=NONE     gui=bold    ctermfg=153   ctermbg=NONE  cterm=bold
hi  Search        guifg=#000000  guibg=#dd9922  gui=NONE    ctermfg=16    ctermbg=214   cterm=NONE
hi  SpecialKey    guifg=NONE     guibg=NONE     gui=bold    ctermfg=NONE  ctermbg=NONE  cterm=bold
hi  VertSplit     guifg=#555555  guibg=NONE     gui=NONE    ctermfg=240   ctermbg=NONE  cterm=NONE
hi  Warning       guifg=#dd9922  guibg=NONE     gui=NONE    ctermfg=214   ctermbg=NONE  cterm=NONE
hi  WarningMsg    guifg=#dd9922  guibg=NONE     gui=bold    ctermfg=214   ctermbg=NONE  cterm=bold
hi  clear         FoldColumn
hi  clear         SignColumn
hi  clear         WildMenu

hi  MatchParen  guifg=#000000  guibg=#dd9922  ctermfg=16 ctermbg=214
hi  ParenMatch  guifg=#000000  guibg=#dd9922  ctermfg=16 ctermbg=214

hi  Pmenu       guifg=#999999  guibg=NONE     gui=NONE  ctermfg=246   ctermbg=NONE  cterm=NONE
hi  PmenuSbar   guifg=NONE     guibg=NONE     gui=NONE  ctermfg=NONE  ctermbg=NONE  cterm=NONE
hi  PmenuSel    guifg=#ffffff  guibg=#333333  gui=bold  ctermfg=255   ctermbg=237   cterm=bold
hi  PmenuThumb  guifg=NONE     guibg=#555555  gui=NONE  ctermfg=NONE  ctermbg=240   cterm=NONE

hi  StatusLine    guifg=#aaaaaa  guibg=NONE  gui=underline  ctermfg=248  ctermbg=NONE  cterm=underline
hi  StatusLineNC  guifg=#555555  guibg=NONE  gui=underline  ctermfg=240  ctermbg=NONE  cterm=underline

hi  CursorWordHighlight  gui=underline

" Highlighted syntax items
hi  Comment      guifg=#797875  guibg=NONE  gui=italic       ctermfg=243   ctermbg=NONE  cterm=italic
hi  EndOfBuffer  guifg=#773333  guibg=NONE  gui=NONE         ctermfg=95    ctermbg=NONE  cterm=NONE
hi  Function     guifg=NONE     guibg=NONE  gui=italic       ctermfg=NONE  ctermbg=NONE  cterm=italic
hi  Identifier   guifg=NONE     guibg=NONE  gui=italic       ctermfg=NONE  ctermbg=NONE  cterm=italic
hi  Include      guifg=NONE     guibg=NONE  gui=italic       ctermfg=NONE  ctermbg=NONE  cterm=italic
hi  Keyword      guifg=NONE     guibg=NONE  gui=bold         ctermfg=NONE  ctermbg=NONE  cterm=bold
hi  NonText      guifg=#884433  guibg=NONE  gui=NONE         ctermfg=131   ctermbg=NONE  cterm=NONE
hi  Question     guifg=NONE     guibg=NONE  gui=NONE         ctermfg=NONE  ctermbg=NONE  cterm=NONE
hi  Statement    guifg=NONE     guibg=NONE  gui=bold         ctermfg=NONE  ctermbg=NONE  cterm=bold
hi  String       guifg=#9c9a98  guibg=NONE  gui=NONE         ctermfg=247   ctermbg=NONE  cterm=NONE
hi  Todo         guifg=#dd9922  guibg=NONE  gui=bold,italic  ctermfg=214   ctermbg=NONE  cterm=bold,italic
hi  Type         guifg=NONE     guibg=NONE  gui=bold         ctermfg=NONE  ctermbg=NONE  cterm=bold
hi  Underlined   guifg=NONE     guibg=NONE  gui=underline    ctermfg=NONE  ctermbg=NONE  cterm=underline
hi  Whitespace   guifg=#333333  guibg=NONE  gui=NONE         ctermfg=236   ctermbg=NONE  cterm=NONE
hi  Title        guifg=NONE     guibg=NONE  gui=bold         ctermfg=NONE  ctermbg=NONE  cterm=bold

" Diff highlighting
hi  DiffAdd     guifg=#88aa77  guibg=NONE  gui=NONE       ctermfg=107  ctermbg=NONE  cterm=NONE
hi  DiffDelete  guifg=#aa7766  guibg=NONE  gui=NONE       ctermfg=137  ctermbg=NONE  cterm=NONE
hi  DiffChange  guifg=#7788aa  guibg=NONE  gui=NONE       ctermfg=67   ctermbg=NONE  cterm=NONE
hi  DiffText    guifg=#7788aa  guibg=NONE  gui=underline  ctermfg=67   ctermbg=NONE  cterm=underline

" Non-highlighted syntax items
hi clear Conceal
hi clear Constant
hi clear Define
hi clear Directory
hi clear Label
hi clear Number
hi clear Operator
hi clear PreProc
hi clear Special
hi clear Noise
