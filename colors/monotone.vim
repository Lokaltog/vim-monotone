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

hi Normal guifg=#cccccc guibg=#141210 gui=NONE
hi Visual gui=reverse

" UI/special
hi ColorColumn guifg=NONE guibg=#191817 gui=NONE
hi Cursor guifg=NONE guibg=NONE gui=NONE
hi CursorLine guifg=NONE guibg=#191817 gui=NONE
hi CursorLineNr guifg=NONE guibg=#252322 gui=NONE
hi Error guifg=#ff4444 guibg=NONE gui=bold
hi ErrorMsg guifg=#ff4444 guibg=NONE gui=bold
hi FoldColumn guifg=NONE guibg=NONE gui=NONE
hi Folded guifg=NONE guibg=#252322 gui=italic
hi LineNr guifg=#555555 guibg=NONE gui=NONE
hi MoreMsg guifg=#99bbdd guibg=NONE gui=bold
hi Search guifg=#000000 guibg=#dd9922 gui=NONE
hi SignColumn guifg=NONE guibg=NONE gui=NONE
hi SpecialKey guifg=NONE guibg=NONE gui=bold
hi VertSplit guifg=#555555 guibg=NONE gui=NONE
hi Warning guifg=#dd9922 guibg=NONE gui=NONE
hi WarningMsg guifg=#dd9922 guibg=NONE gui=bold
hi WildMenu guifg=NONE guibg=NONE gui=NONE

hi MatchParen guifg=#ffffff guibg=#778899 gui=bold
hi ParenMatch guifg=#ffffff guibg=#778899 gui=bold

hi Pmenu guifg=#999999 guibg=NONE gui=NONE
hi PmenuSbar guifg=NONE guibg=NONE gui=NONE
hi PmenuSel guifg=#ffffff guibg=#333333 gui=bold
hi PmenuThumb guifg=NONE guibg=#555555 gui=NONE

hi StatusLine guifg=#aaaaaa guibg=NONE gui=underline
hi StatusLineNC guifg=#555555 guibg=NONE gui=underline

hi CursorWordHighlight gui=underline

" Highlighted syntax items
hi Comment guifg=#696865 guibg=NONE gui=italic
hi EndOfBuffer guifg=#773333 guibg=NONE gui=NONE
hi Function guifg=NONE guibg=NONE gui=italic
hi Identifier guifg=NONE guibg=NONE gui=italic
hi Include guifg=NONE guibg=NONE gui=italic
hi Keyword guifg=NONE guibg=NONE gui=bold
hi NonText guifg=#884433 guibg=NONE gui=NONE
hi Question guifg=NONE guibg=NONE gui=NONE
hi Statement guifg=NONE guibg=NONE gui=bold
hi String guifg=#9c9a98 guibg=NONE gui=NONE
hi Todo guifg=#dd9922 guibg=NONE gui=bold,italic
hi Type guifg=NONE guibg=NONE gui=bold
hi Underlined guifg=NONE guibg=NONE gui=underline
hi Whitespace guifg=#333333 guibg=NONE gui=NONE

" Diff highlighting
hi DiffAdd guifg=#88aa77 guibg=NONE gui=NONE
hi DiffDelete guifg=#aa7766 guibg=NONE gui=NONE
hi DiffChange guifg=#7788aa guibg=NONE gui=NONE
hi DiffText guifg=#7788aa guibg=NONE gui=underline

" Non-highlighted syntax items
hi Conceal guifg=NONE guibg=NONE gui=NONE
hi Constant guifg=NONE guibg=NONE gui=NONE
hi Define guifg=NONE guibg=NONE gui=NONE
hi Directory guifg=NONE guibg=NONE gui=NONE
hi Label guifg=NONE guibg=NONE gui=NONE
hi Number guifg=NONE guibg=NONE gui=NONE
hi Operator guifg=NONE guibg=NONE gui=NONE
hi PreProc guifg=NONE guibg=NONE gui=NONE
hi Special guifg=NONE guibg=NONE gui=NONE
hi Title guifg=NONE guibg=NONE gui=NONE
