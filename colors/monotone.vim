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

if !exists('g:monotone_color')
	let g:monotone_color = [8, 3, 82]
endif
let s:base_color = g:monotone_color

function! s:Shade(offset)
	let h = s:base_color[0]
	let s = s:base_color[1]
	let l = s:base_color[2] - a:offset
	return s:HSLToHex(h, s, l)
endfunction
function! s:HSLToHex(h, s, l)
	" http://www.easyrgb.com/en/math.php#text19
	" normalize the angle into the 0-360 range
	" see: http://www.w3.org/TR/css3-color/#hsl-color
	let h = a:h >= 0 && a:h <= 360 ? a:h/360.0 : (((a:h % 360) + 360) % 360)/360.0
	let s = a:s/100.0
	let l = a:l/100.0

	let rgb = {}
	let var_2 = l < 0.5 ? l * (1.0 + s) : (l + s) - (s * l)
	let var_1 = 2 * l - var_2

	let rgb.r = s:Hue2RGB(var_1, var_2, h + (1.0/3))
	let rgb.g = s:Hue2RGB(var_1, var_2, h)
	let rgb.b = s:Hue2RGB(var_1, var_2, h - (1.0/3))

	let rgb = map(rgb, 'float2nr((v:val < 0 ? 0 : v:val) * 255)')

	return printf('#%02x%02x%02x', rgb.r, rgb.g, rgb.b)
endfunction
function! s:Hue2RGB(v1, v2, vH)
	let H = a:vH
	if H < 0 | let H += 1 | endif
	if H > 1 | let H -= 1 | endif
	if (6 * H) < 1 | return a:v1 + (a:v2 - a:v1) * 6 * H | endif
	if (2 * H) < 1 | return a:v2 | endif
	if (3 * H) < 2 | return a:v1 + (a:v2 - a:v1) * ((2.0/3) - H) * 6 | endif
	return a:v1
endfunction
function! s:Hi(group, guifgshade, guibgshade, gui, ctermfg, ctermbg, cterm)
	let fg = type(a:guifgshade) == type('') ? a:guifgshade : s:Shade(a:guifgshade)
	let bg = type(a:guibgshade) == type('') ? a:guibgshade : s:Shade(a:guibgshade)
	exec printf('hi %s guifg=%s guibg=%s gui=%s ctermfg=%s ctermbg=%s cterm=%s',
		\ a:group,
		\ fg, bg, a:gui,
		\ a:ctermfg, a:ctermbg, a:cterm)
endfunction

set background=dark

hi clear
syntax reset
let g:colors_name = 'monotone'

call s:Hi('Normal', 0, 75, 'NONE', 252, 233, 'NONE')
call s:Hi('Visual', 75, 0, 'NONE', 16, 248, 'NONE')

" Normal cursor
hi Cursor   guibg=#ff4444  ctermbg=203
" Insert cursor
hi CursorI  guibg=#ffffff  ctermbg=255
" Replace cursor
hi CursorR  guibg=#ff4444  ctermbg=203
" Operator-pending cursor
hi CursorO  guibg=#00afff  ctermbg=39

" UI/special
call s:Hi('ColorColumn', 'NONE', 73, 'NONE', 'NONE', 234, 'NONE')
call s:Hi('CursorLine', 'NONE', 73, 'NONE', 'NONE', 234, 'NONE')
call s:Hi('CursorLineNr', 'NONE', 69, 'NONE', 'NONE', 235, 'NONE')
call s:Hi('Folded', 'NONE', 69, 'italic', 'NONE', 235, 'italic')
hi Error         guifg=#ff4444  guibg=NONE     gui=bold    ctermfg=203   ctermbg=NONE  cterm=bold
hi ErrorMsg      guifg=#ff4444  guibg=NONE     gui=bold    ctermfg=203   ctermbg=NONE  cterm=bold
hi LineNr        guifg=#555555  guibg=NONE     gui=NONE    ctermfg=240   ctermbg=NONE  cterm=NONE
hi MoreMsg       guifg=#00afff  guibg=NONE     gui=bold    ctermfg=153   ctermbg=NONE  cterm=bold
hi Search        guifg=#000000  guibg=#dd9922  gui=NONE    ctermfg=16    ctermbg=214   cterm=NONE
hi SpecialKey    guifg=NONE     guibg=NONE     gui=bold    ctermfg=NONE  ctermbg=NONE  cterm=bold
hi VertSplit     guifg=#555555  guibg=NONE     gui=NONE    ctermfg=240   ctermbg=NONE  cterm=NONE
hi Warning       guifg=#dd9922  guibg=NONE     gui=NONE    ctermfg=214   ctermbg=NONE  cterm=NONE
hi WarningMsg    guifg=#dd9922  guibg=NONE     gui=bold    ctermfg=214   ctermbg=NONE  cterm=bold
hi WildMenu      guifg=#000000  guibg=#aaaaaa  gui=NONE    ctermfg=16    ctermbg=248   cterm=NONE
hi clear         FoldColumn
hi clear         SignColumn

hi MatchParen  guifg=#000000  guibg=#dd9922  ctermfg=16 ctermbg=214
hi ParenMatch  guifg=#000000  guibg=#dd9922  ctermfg=16 ctermbg=214

hi Pmenu      guifg=#999999 guibg=#242220 gui=NONE      ctermfg=246  ctermbg=235 cterm=NONE
hi PmenuSbar  guifg=NONE    guibg=#242220 gui=NONE      ctermfg=NONE ctermbg=235 cterm=NONE
hi PmenuSel   guifg=#d0d0d0 guibg=#242220 gui=underline ctermfg=252  ctermbg=235 cterm=underline
hi PmenuThumb guifg=NONE    guibg=#555555 gui=NONE      ctermfg=NONE ctermbg=240 cterm=NONE

hi StatusLine    guifg=#aaaaaa  guibg=NONE  gui=underline  ctermfg=248  ctermbg=NONE  cterm=underline
hi StatusLineNC  guifg=#555555  guibg=NONE  gui=underline  ctermfg=240  ctermbg=NONE  cterm=underline

hi CursorWordHighlight  gui=underline

" Highlighted syntax items
call s:Hi('Comment', 36, 'NONE', 'italic', 243, 'NONE', 'italic')
call s:Hi('String', 22, 'NONE', 'NONE', 247, 'NONE', 'NONE')
hi EndOfBuffer  guifg=#773333  guibg=NONE  gui=NONE         ctermfg=95    ctermbg=NONE  cterm=NONE
hi Function     guifg=NONE     guibg=NONE  gui=italic       ctermfg=NONE  ctermbg=NONE  cterm=italic
hi Identifier   guifg=NONE     guibg=NONE  gui=italic       ctermfg=NONE  ctermbg=NONE  cterm=italic
hi Include      guifg=NONE     guibg=NONE  gui=italic       ctermfg=NONE  ctermbg=NONE  cterm=italic
hi Keyword      guifg=NONE     guibg=NONE  gui=bold         ctermfg=NONE  ctermbg=NONE  cterm=bold
hi NonText      guifg=#884433  guibg=NONE  gui=NONE         ctermfg=131   ctermbg=NONE  cterm=NONE
hi Question     guifg=NONE     guibg=NONE  gui=NONE         ctermfg=NONE  ctermbg=NONE  cterm=NONE
hi Statement    guifg=NONE     guibg=NONE  gui=bold         ctermfg=NONE  ctermbg=NONE  cterm=bold
hi Todo         guifg=#dd9922  guibg=NONE  gui=bold,italic  ctermfg=214   ctermbg=NONE  cterm=bold,italic
hi Type         guifg=NONE     guibg=NONE  gui=bold         ctermfg=NONE  ctermbg=NONE  cterm=bold
hi Underlined   guifg=NONE     guibg=NONE  gui=underline    ctermfg=NONE  ctermbg=NONE  cterm=underline
hi Whitespace   guifg=#333333  guibg=NONE  gui=NONE         ctermfg=236   ctermbg=NONE  cterm=NONE
hi Title        guifg=NONE     guibg=NONE  gui=bold         ctermfg=NONE  ctermbg=NONE  cterm=bold

" Diff highlighting
hi DiffAdd     guifg=#88aa77  guibg=NONE  gui=NONE       ctermfg=107  ctermbg=NONE  cterm=NONE
hi DiffDelete  guifg=#aa7766  guibg=NONE  gui=NONE       ctermfg=137  ctermbg=NONE  cterm=NONE
hi DiffChange  guifg=#7788aa  guibg=NONE  gui=NONE       ctermfg=67   ctermbg=NONE  cterm=NONE
hi DiffText    guifg=#7788aa  guibg=NONE  gui=underline  ctermfg=67   ctermbg=NONE  cterm=underline

" Quickfix window (some groups need custom 'winhl')
hi QuickFixLine guibg=#333333
hi QFNormal guibg=#222222
hi QFEndOfBuffer guifg=#222222

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

" Plugin-specific highlighting

" ALE
hi ALEError       guisp=#ff4444 gui=undercurl ctermfg=203 cterm=bold,underline
hi ALEWarning     guisp=#dd9922 gui=undercurl ctermfg=214 cterm=bold,underline
hi ALEErrorSign   guifg=#ff4444 ctermfg=203
hi ALEWarningSign guifg=#dd9922 ctermfg=214

" COC
hi CocErrorHighlight   guisp=#ff4444 gui=undercurl ctermfg=203 cterm=bold,underline
hi CocWarningHighlight guisp=#dd9922 gui=undercurl ctermfg=214 cterm=bold,underline
hi CocInfoHighlight    guisp=#00afff gui=undercurl ctermfg=153 cterm=bold,underline
hi CocHintHighlight    guisp=#00afff gui=undercurl ctermfg=153 cterm=bold,underline
hi CocErrorSign        guifg=#ff4444 ctermfg=203
hi CocWarningSign      guifg=#dd9922 ctermfg=214
hi CocInfoSign         guifg=#00afff ctermfg=153
hi CocHintSign         guifg=#00afff ctermfg=153

" Sneak
hi Sneak          guifg=#000000 guibg=#00afff gui=NONE    ctermfg=16  ctermbg=153 cterm=NONE
hi SneakLabel     guifg=#000000 guibg=#00afff gui=bold    ctermfg=16  ctermbg=153 cterm=bold
hi SneakLabelMask guifg=#00afff guibg=#00afff ctermfg=153 ctermbg=153

" QuickScope
hi QuickScopePrimary gui=underline guisp=#ff4444
hi QuickScopeSecondary gui=underline guisp=#ff4444

" Highlightedyank
hi HighlightedyankRegion guibg=#000000 guifg=#dd9922
