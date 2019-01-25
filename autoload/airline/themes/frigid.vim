" Copyright (c) 2016-present Arctic Ice Studio <development@arcticicestudio.com>
" Copyright (c) 2016-present Sven Greb <code@svengreb.de>

" Project: Nord Vim
" Repository: https://github.com/arcticicestudio/frigid-vim
" License: MIT

let s:frigid_vim_version="0.0.1"
let g:airline#themes#frigid#palette = {}

let s:frigid0_gui = "#2E3440"
let s:frigid1_gui = "#3B4252"
let s:frigid2_gui = "#434C5E"
let s:frigid3_gui = "#4C566A"
let s:frigid4_gui = "#D8DEE9"
let s:frigid5_gui = "#E5E9F0"
let s:frigid6_gui = "#ECEFF4"
let s:frigid7_gui = "#8FBCBB"
let s:frigid8_gui = "#88C0D0"
let s:frigid9_gui = "#81A1C1"
let s:frigid10_gui = "#5E81AC"
let s:frigid11_gui = "#BF616A"
let s:frigid12_gui = "#D08770"
let s:frigid13_gui = "#EBCB8B"
let s:frigid14_gui = "#A3BE8C"
let s:frigid15_gui = "#B48EAD"

let s:frigid0_term = "NONE"
let s:frigid1_term = "0"
let s:frigid2_term = "NONE"
let s:frigid4_term = "NONE"
let s:frigid11_term = "1"
let s:frigid14_term = "2"
let s:frigid13_term = "3"
let s:frigid9_term = "4"
let s:frigid15_term = "5"
let s:frigid8_term = "6"
let s:frigid5_term = "7"
let s:frigid3_term = "8"
let s:frigid12_term = "11"
let s:frigid10_term = "12"
let s:frigid7_term = "14"
let s:frigid6_term = "15"

let s:NMain = [s:frigid1_gui, s:frigid8_gui, s:frigid1_term, s:frigid8_term]
let s:NRight = [s:frigid1_gui, s:frigid9_gui, s:frigid1_term, s:frigid9_term]
let s:NMiddle = [s:frigid5_gui, s:frigid3_gui, s:frigid5_term, s:frigid3_term]
let g:airline#themes#frigid#palette.normal = airline#themes#generate_color_map(s:NMain, s:NRight, s:NMiddle)

let s:IMain = [s:frigid1_gui, s:frigid14_gui, s:frigid1_term, s:frigid6_term]
let s:IRight = [s:frigid1_gui, s:frigid9_gui, s:frigid1_term, s:frigid9_term]
let s:IMiddle = [s:frigid5_gui, s:frigid3_gui, s:frigid5_term, s:frigid3_term]
let g:airline#themes#frigid#palette.insert = airline#themes#generate_color_map(s:IMain, s:IRight, s:IMiddle)

let s:RMain = [s:frigid1_gui, s:frigid14_gui, s:frigid1_term, s:frigid14_term]
let s:RRight = [s:frigid1_gui, s:frigid9_gui, s:frigid1_term, s:frigid9_term]
let s:RMiddle = [s:frigid5_gui, s:frigid3_gui, s:frigid5_term, s:frigid3_term]
let g:airline#themes#frigid#palette.replace = airline#themes#generate_color_map(s:RMain, s:RRight, s:RMiddle)

let s:VMain = [s:frigid1_gui, s:frigid7_gui, s:frigid1_term, s:frigid7_term]
let s:VRight = [s:frigid1_gui, s:frigid9_gui, s:frigid1_term, s:frigid9_term]
let s:VMiddle = [s:frigid5_gui, s:frigid3_gui, s:frigid5_term, s:frigid3_term]
let g:airline#themes#frigid#palette.visual = airline#themes#generate_color_map(s:VMain, s:VRight, s:VMiddle)

let s:IAMain = [s:frigid5_gui, s:frigid3_gui, s:frigid5_term, s:frigid3_term]
let s:IARight = [s:frigid5_gui, s:frigid3_gui, s:frigid5_term, s:frigid3_term]
let s:IAMiddle = [s:frigid5_gui, s:frigid1_gui, s:frigid5_term, s:frigid1_term]
let g:airline#themes#frigid#palette.inactive = airline#themes#generate_color_map(s:IAMain, s:IARight, s:IAMiddle)
