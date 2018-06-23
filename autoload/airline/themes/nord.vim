" Copyright (c) 2016-present Arctic Ice Studio <development@arcticicestudio.com>
" Copyright (c) 2016-present Sven Greb <code@svengreb.de>

" Project: Nord Vim
" Repository: https://github.com/arcticicestudio/nord-vim
" License: MIT

let s:nord_vim_version="0.8.0"
let g:airline#themes#nord#palette = {}

let s:nord_gui = [
	\ '#2E3440', '#3B4252', '#434C5E', '#4C566A', '#D8DEE9', '#E5E9F0',
	\ '#ECEFF4', '#8FBCBB', '#88C0D0', '#81A1C1', '#5E81AC', '#BF616A',
	\ '#D08770', '#EBCB8B',  '#A3BE8C', '#B48EAD'
\ ]

let s:nord_term = [
	\ 'NONE', '0', 'NONE', '8', 'NONE', '7', '15', '14', '6', '4', '12', '1',
	\ '11', '3', '2', '5'
\ ]

let s:defaults = {
	\ 'normal':   [1,  8, 1, 9, 4, 3],
	\ 'insert':   [1,  6, 1, 9, 4, 3],
	\ 'replace':  [1, 14, 1, 9, 4, 3],
	\ 'visual':   [1,  7, 1, 9, 4, 3],
	\ 'inactive': [4,  3, 4, 3, 4, 1]
	\ }

for s:mode in keys(s:defaults)
	let s:mainFg =   get(g:, 'nord_airline_'.s:mode.'_main_fg',   s:defaults[s:mode][0])
	let s:mainBg =   get(g:, 'nord_airline_'.s:mode.'_main_bg',   s:defaults[s:mode][1])
	let s:rightFg =  get(g:, 'nord_airline_'.s:mode.'_right_fg',  s:defaults[s:mode][2])
	let s:rightBg =  get(g:, 'nord_airline_'.s:mode.'_right_bg',  s:defaults[s:mode][3])
	let s:middleFg = get(g:, 'nord_airline_'.s:mode.'_middle_fg', s:defaults[s:mode][4])
	let s:middleBg = get(g:, 'nord_airline_'.s:mode.'_middle_bg', s:defaults[s:mode][5])
	let s:main   = [ s:nord_gui[s:mainFg]   , s:nord_gui[s:mainBg]   , s:nord_term[s:mainFg]   , s:nord_term[s:mainBg]   ]
	let s:right  = [ s:nord_gui[s:rightFg]  , s:nord_gui[s:rightBg]  , s:nord_term[s:rightFg]  , s:nord_term[s:rightBg]  ]
	let s:middle = [ s:nord_gui[s:middleFg] , s:nord_gui[s:middleBg] , s:nord_term[s:middleFg] , s:nord_term[s:middleBg] ]
	let g:airline#themes#nord#palette[s:mode] = airline#themes#generate_color_map(s:main, s:right, s:middle)
endfor
