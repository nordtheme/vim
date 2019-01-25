" Copyright (c) 2016-present Arctic Ice Studio <development@arcticicestudio.com>
" Copyright (c) 2016-present Sven Greb <code@svengreb.de>

" Project: Nord Vim
" Repository: https://github.com/arcticicestudio/frigid-vim
" License: MIT

if version > 580
  hi clear
  if exists("syntax_on")
    syntax reset
  endif
endif

let g:colors_name = "frigid"
let s:frigid_vim_version="0.0.1"

set background=dark

let s:polar_darker_gui = "#2E3440"
let s:polar_dark_gui   = "#3B4252"
let s:polar_gui        = "#434C5E"
let s:polar_light_gui  = "#4C566A"
let s:silver_gui       = "#D8DEE9"
let s:silver_light_gui = "#E5E9F0"
let s:white_gui        = "#ECEFF4"
let s:teal_gui         = "#8FBCBB"
let s:teal_light_gui   = "#88C0D0"
let s:blue_light_gui   = "#81A1C1"
let s:blue_gui         = "#5E81AC"
let s:red_gui          = "#BF616A"
let s:orange_gui       = "#D08770"
let s:yellow_gui       = "#EBCB8B"
let s:green_gui        = "#A3BE8C"
let s:magenta_gui      = "#B48EAD"

let s:polar_dark_term   = "0"
let s:polar_light_term  = "8"
let s:silver_light_term = "7"
let s:white_term        = "15"
let s:teal_term         = "14"
let s:teal_light_term   = "6"
let s:blue_light_term   = "4"
let s:blue_term         = "12"
let s:red_term          = "1"
let s:orange_term       = "11"
let s:yellow_term       = "3"
let s:green_term        = "2"
let s:magenta_term      = "5"

let s:polar_light_gui_brightened = [
  \ s:polar_light_gui,
  \ "#4e586d",
  \ "#505b70",
  \ "#525d73",
  \ "#556076",
  \ "#576279",
  \ "#59647c",
  \ "#5b677f",
  \ "#5d6982",
  \ "#5f6c85",
  \ "#616e88",
  \ "#63718b",
  \ "#66738e",
  \ "#687591",
  \ "#6a7894",
  \ "#6d7a96",
  \ "#6f7d98",
  \ "#72809a",
  \ "#75829c",
  \ "#78859e",
  \ "#7b88a1",
\ ]

" Italics
let s:italic = "italic,"

if !exists("g:frigid_italic")
  let g:frigid_italic=1
endif

if g:frigid_italic == 0
  let s:italic = ""
endif

let s:italicize_comments = ""

if !exists("g:frigid_italic_comments")
  let g:frigid_italic_comments = 1
endif

if exists("g:frigid_italic_comments")
  if g:frigid_italic_comments == 1
    let s:italicize_comments = s:italic
  endif
endif

let s:underline = "underline,"
if ! get(g:, "frigid_underline", 1)
  let s:underline = "NONE,"
endif

if !exists('g:frigid_uniform_status_lines')
  let g:frigid_uniform_status_lines = 0
endif

if !exists("g:frigid_comment_brightness")
  let g:frigid_comment_brightness = 12
endif

if !exists("g:frigid_uniform_diff_background")
  let g:frigid_uniform_diff_background = 0
endif

if !exists("g:frigid_cursor_line_number_background")
  let g:frigid_cursor_line_number_background = 0
endif

function! s:hi(group, guifg, guibg, ctermfg, ctermbg, attr, guisp)
  if a:guifg != ""
    exec "hi " . a:group . " guifg=" . a:guifg
  endif
  if a:guibg != ""
    exec "hi " . a:group . " guibg=" . a:guibg
  endif
  if a:ctermfg != ""
    exec "hi " . a:group . " ctermfg=" . a:ctermfg
  endif
  if a:ctermbg != ""
    exec "hi " . a:group . " ctermbg=" . a:ctermbg
  endif
  if a:attr != ""
    exec "hi " . a:group . " gui=" . a:attr . " cterm=" . substitute(a:attr, "undercurl", s:underline, "")
  endif
  if a:guisp != ""
    exec "hi " . a:group . " guisp=" . a:guisp
  endif
endfunction

"+---------------+
"+ UI Components +
"+---------------+
"+--- Attributes ---+
call s:hi("Bold", "", "", "", "", "bold", "")
call s:hi("Italic", "", "", "", "", s:italic, "")
call s:hi("Underline", "", "", "", "", s:underline, "")

"+--- Editor ---+
call s:hi("ColorColumn", s:red_gui, s:polar_dark_gui, s:red_term, s:polar_dark_term, "", "")
call s:hi("Cursor", s:polar_darker_gui, s:silver_gui, "", "NONE", "", "")
call s:hi("CursorLine", "", s:polar_dark_gui, "NONE", s:polar_dark_term, "NONE", "")
call s:hi("Error", s:polar_darker_gui, s:red_gui, "", s:red_term, "", "")
call s:hi("iCursor", s:polar_darker_gui, s:silver_gui, "", "NONE", "", "")
call s:hi("LineNr", s:polar_light_gui, s:polar_darker_gui, s:polar_light_term, "NONE", "", "")
call s:hi("MatchParen", s:teal_light_gui, s:polar_light_gui, s:teal_light_term, s:polar_light_term, "", "")
call s:hi("NonText", s:polar_gui, "", s:polar_light_term, "", "", "")
call s:hi("Normal", s:silver_gui, s:polar_darker_gui, "NONE", "NONE", "", "")
call s:hi("PMenu", s:silver_gui, s:polar_gui, "NONE", s:polar_dark_term, "NONE", "")
call s:hi("PmenuSbar", s:silver_gui, s:polar_gui, "NONE", s:polar_dark_term, "", "")
call s:hi("PMenuSel", s:teal_light_gui, s:polar_light_gui, s:teal_light_term, s:polar_light_term, "", "")
call s:hi("PmenuThumb", s:teal_light_gui, s:polar_light_gui, "NONE", s:polar_light_term, "", "")
call s:hi("SpecialKey", s:polar_light_gui, "", s:polar_light_term, "", "", "")
call s:hi("SpellBad", s:red_gui, s:polar_darker_gui, s:red_term, "NONE", "undercurl", s:red_gui)
call s:hi("SpellCap", s:yellow_gui, s:polar_darker_gui, s:yellow_term, "NONE", "undercurl", s:yellow_gui)
call s:hi("SpellLocal", s:silver_light_gui, s:polar_darker_gui, s:silver_light_term, "NONE", "undercurl", s:silver_light_gui)
call s:hi("SpellRare", s:white_gui, s:polar_darker_gui, s:white_term, "NONE", "undercurl", s:white_gui)
call s:hi("Visual", "", s:polar_gui, "", s:polar_dark_term, "", "")
call s:hi("VisualNOS", "", s:polar_gui, "", s:polar_dark_term, "", "")
"+- Neovim Support -+
call s:hi("healthError", s:red_gui, s:polar_dark_gui, s:red_term, s:polar_dark_term, "", "")
call s:hi("healthSuccess", s:green_gui, s:polar_dark_gui, s:green_term, s:polar_dark_term, "", "")
call s:hi("healthWarning", s:yellow_gui, s:polar_dark_gui, s:yellow_term, s:polar_dark_term, "", "")
call s:hi("TermCursorNC", "", s:polar_dark_gui, "", s:polar_dark_term, "", "")

"+- Neovim Terminal Colors -+
if has('nvim')
  let g:terminal_color_0 = s:polar_dark_gui
  let g:terminal_color_1 = s:red_gui
  let g:terminal_color_2 = s:green_gui
  let g:terminal_color_3 = s:yellow_gui
  let g:terminal_color_4 = s:blue_light_gui
  let g:terminal_color_5 = s:magenta_gui
  let g:terminal_color_6 = s:teal_light_gui
  let g:terminal_color_7 = s:silver_light_gui
  let g:terminal_color_8 = s:polar_light_gui
  let g:terminal_color_9 = s:red_gui
  let g:terminal_color_10 = s:green_gui
  let g:terminal_color_11 = s:yellow_gui
  let g:terminal_color_12 = s:blue_light_gui
  let g:terminal_color_13 = s:magenta_gui
  let g:terminal_color_14 = s:teal_gui
  let g:terminal_color_15 = s:white_gui
endif

"+--- Gutter ---+
call s:hi("CursorColumn", "", s:polar_dark_gui, "NONE", s:polar_dark_term, "", "")
if g:frigid_cursor_line_number_background == 0
  call s:hi("CursorLineNr", s:silver_gui, s:polar_darker_gui, "NONE", "", "", "")
else
  call s:hi("CursorLineNr", s:silver_gui, s:polar_dark_gui, "NONE", s:polar_dark_term, "", "")
endif
call s:hi("Folded", s:polar_light_gui, s:polar_dark_gui, s:polar_light_term, s:polar_dark_term, "bold", "")
call s:hi("FoldColumn", s:polar_light_gui, s:polar_darker_gui, s:polar_light_term, "NONE", "", "")
call s:hi("SignColumn", s:polar_dark_gui, s:polar_darker_gui, s:polar_dark_term, "NONE", "", "")

"+--- Navigation ---+
call s:hi("Directory", s:teal_light_gui, "", s:teal_light_term, "NONE", "", "")

"+--- Prompt/Status ---+
call s:hi("EndOfBuffer", s:polar_dark_gui, "", s:polar_dark_term, "NONE", "", "")
call s:hi("ErrorMsg", s:silver_gui, s:red_gui, "NONE", s:red_term, "", "")
call s:hi("ModeMsg", s:silver_gui, "", "", "", "", "")
call s:hi("MoreMsg", s:silver_gui, "", "", "", "", "")
call s:hi("Question", s:silver_gui, "", "NONE", "", "", "")
if g:frigid_uniform_status_lines == 0
  call s:hi("StatusLine", s:teal_light_gui, s:polar_light_gui, s:teal_light_term, s:polar_light_term, "NONE", "")
  call s:hi("StatusLineNC", s:silver_gui, s:polar_dark_gui, "NONE", s:polar_dark_term, "NONE", "")
  call s:hi("StatusLineTerm", s:teal_light_gui, s:polar_light_gui, s:teal_light_term, s:polar_light_term, "NONE", "")
  call s:hi("StatusLineTermNC", s:silver_gui, s:polar_dark_gui, "NONE", s:polar_dark_term, "NONE", "")
else
  call s:hi("StatusLine", s:teal_light_gui, s:polar_light_gui, s:teal_light_term, s:polar_light_term, "NONE", "")
  call s:hi("StatusLineNC", s:silver_gui, s:polar_light_gui, "NONE", s:polar_light_term, "NONE", "")
  call s:hi("StatusLineTerm", s:teal_light_gui, s:polar_light_gui, s:teal_light_term, s:polar_light_term, "NONE", "")
  call s:hi("StatusLineTermNC", s:silver_gui, s:polar_light_gui, "NONE", s:polar_light_term, "NONE", "")
endif
call s:hi("WarningMsg", s:polar_darker_gui, s:yellow_gui, s:polar_dark_term, s:yellow_term, "", "")
call s:hi("WildMenu", s:teal_light_gui, s:polar_dark_gui, s:teal_light_term, s:polar_dark_term, "", "")

"+--- Search ---+
call s:hi("IncSearch", s:polar_dark_gui, s:teal_light_gui, s:polar_dark_term, s:teal_light_term, s:underline, "")
call s:hi("Search", s:polar_dark_gui, s:teal_light_gui, s:polar_dark_term, s:teal_light_term, "NONE", "")

"+--- Tabs ---+
call s:hi("TabLine", s:silver_gui, s:polar_dark_gui, "NONE", s:polar_dark_term, "NONE", "")
call s:hi("TabLineFill", s:silver_gui, s:polar_dark_gui, "NONE", s:polar_dark_term, "NONE", "")
call s:hi("TabLineSel", s:teal_light_gui, s:polar_light_gui, s:teal_light_term, s:polar_light_term, "NONE", "")

"+--- Window ---+
call s:hi("Title", s:silver_gui, "", "NONE", "", "NONE", "")
call s:hi("VertSplit", s:polar_gui, s:polar_dark_gui, s:polar_light_term, s:polar_dark_term, "NONE", "")

"+----------------------+
"+ Language Base Groups +
"+----------------------+
call s:hi("Boolean", s:orange_gui, "", s:orange_term, "", "", "")
call s:hi("Character", s:green_gui, "", s:green_term, "", "", "")
call s:hi("Mute", s:polar_light_gui_brightened[g:frigid_comment_brightness], "", s:polar_light_term, "", "NONE", "")
call s:hi("Comment", s:polar_light_gui_brightened[g:frigid_comment_brightness], "", s:polar_light_term, "", s:italicize_comments, "")
call s:hi("Conditional", s:blue_light_gui, "", s:blue_light_term, "", "", "")
call s:hi("Constant", s:orange_gui, "", "NONE", "", "", "")
call s:hi("Define", s:blue_light_gui, "", s:blue_light_term, "", "", "")
call s:hi("Delimiter", s:white_gui, "", s:white_term, "", "", "")
call s:hi("Exception", s:blue_light_gui, "", s:blue_light_term, "", "", "")
call s:hi("Float", s:magenta_gui, "", s:magenta_term, "", "", "")
call s:hi("Function", s:teal_light_gui, "", s:teal_light_term, "", "", "")
call s:hi("Identifier", s:silver_gui, "", "NONE", "", "NONE", "")
call s:hi("Include", s:blue_light_gui, "", s:blue_light_term, "", "", "")
call s:hi("Keyword", s:blue_light_gui, "", s:blue_light_term, "", "", "")
call s:hi("Label", s:blue_light_gui, "", s:blue_light_term, "", "", "")
call s:hi("Number", s:magenta_gui, "", s:magenta_term, "", "", "")
call s:hi("Operator", s:silver_gui, "", s:blue_light_term, "", "NONE", "")
call s:hi("PreProc", s:blue_light_gui, "", s:blue_light_term, "", "NONE", "")
call s:hi("Repeat", s:blue_light_gui, "", s:blue_light_term, "", "", "")
call s:hi("Special", s:silver_gui, "", "NONE", "", "", "")
call s:hi("SpecialChar", s:yellow_gui, "", s:yellow_term, "", "", "")
call s:hi("SpecialComment", s:teal_light_gui, "", s:teal_light_term, "", s:italicize_comments, "")
call s:hi("Statement", s:blue_light_gui, "", s:blue_light_term, "", "", "")
call s:hi("StorageClass", s:blue_light_gui, "", s:blue_light_term, "", "", "")
call s:hi("String", s:green_gui, "", s:green_term, "", "", "")
call s:hi("Structure", s:blue_light_gui, "", s:blue_light_term, "", "", "")
call s:hi("Tag", s:silver_gui, "", "", "", "", "")
call s:hi("Todo", s:yellow_gui, "NONE", s:yellow_term, "NONE", "", "")
call s:hi("Type", s:blue_light_gui, "", s:blue_light_term, "", "NONE", "")
call s:hi("Typedef", s:blue_light_gui, "", s:blue_light_term, "", "", "")
hi! link Macro Define
hi! link PreCondit PreProc

"+-----------+
"+ Languages +
"+-----------+
call s:hi("awkCharClass", s:teal_gui, "", s:teal_term, "", "", "")
call s:hi("awkPatterns", s:blue_light_gui, "", s:blue_light_term, "", "bold", "")
hi! link awkArrayElement Identifier
hi! link awkBoolLogic Keyword
hi! link awkBrktRegExp SpecialChar
hi! link awkComma Delimiter
hi! link awkExpression Keyword
hi! link awkFieldVars Identifier
hi! link awkLineSkip Keyword
hi! link awkOperator Operator
hi! link awkRegExp SpecialChar
hi! link awkSearch Keyword
hi! link awkSemicolon Delimiter
hi! link awkSpecialCharacter SpecialChar
hi! link awkSpecialPrintf SpecialChar
hi! link awkVariables Identifier

call s:hi("cIncluded", s:teal_gui, "", s:teal_term, "", "", "")
hi! link cOperator Operator
hi! link cPreCondit PreCondit

hi! link csPreCondit PreCondit
hi! link csType Type
hi! link csXmlTag SpecialComment

call s:hi("cssAttributeSelector", s:teal_gui, "", s:teal_term, "", "", "")
call s:hi("cssDefinition", s:teal_gui, "", s:teal_term, "", "NONE", "")
call s:hi("cssIdentifier", s:teal_gui, "", s:teal_term, "", s:underline, "")
call s:hi("cssStringQ", s:teal_gui, "", s:teal_term, "", "", "")
hi! link cssAttr Keyword
hi! link cssBraces Delimiter
hi! link cssClassName cssDefinition
hi! link cssColor Number
hi! link cssProp cssDefinition
hi! link cssPseudoClass cssDefinition
hi! link cssPseudoClassId cssPseudoClass
hi! link cssVendor Keyword

call s:hi("dosiniHeader", s:teal_light_gui, "", s:teal_light_term, "", "", "")
hi! link dosiniLabel Type

call s:hi("dtBooleanKey", s:teal_gui, "", s:teal_term, "", "", "")
call s:hi("dtExecKey", s:teal_gui, "", s:teal_term, "", "", "")
call s:hi("dtLocaleKey", s:teal_gui, "", s:teal_term, "", "", "")
call s:hi("dtNumericKey", s:teal_gui, "", s:teal_term, "", "", "")
call s:hi("dtTypeKey", s:teal_gui, "", s:teal_term, "", "", "")
hi! link dtDelim Delimiter
hi! link dtLocaleValue Keyword
hi! link dtTypeValue Keyword

if g:frigid_uniform_diff_background == 0
  call s:hi("DiffAdd", s:green_gui, s:polar_darker_gui, s:green_term, "NONE", "inverse", "")
  call s:hi("DiffChange", s:yellow_gui, s:polar_darker_gui, s:yellow_term, "NONE", "inverse", "")
  call s:hi("DiffDelete", s:red_gui, s:polar_darker_gui, s:red_term, "NONE", "inverse", "")
  call s:hi("DiffText", s:blue_light_gui, s:polar_darker_gui, s:blue_light_term, "NONE", "inverse", "")
else
  call s:hi("DiffAdd", s:green_gui, s:polar_dark_gui, s:green_term, s:polar_dark_term, "", "")
  call s:hi("DiffChange", s:yellow_gui, s:polar_dark_gui, s:yellow_term, s:polar_dark_term, "", "")
  call s:hi("DiffDelete", s:red_gui, s:polar_dark_gui, s:red_term, s:polar_dark_term, "", "")
  call s:hi("DiffText", s:blue_light_gui, s:polar_dark_gui, s:blue_light_term, s:polar_dark_term, "", "")
endif
" Legacy groups for official git.vim and diff.vim syntax
hi! link diffAdded DiffAdd
hi! link diffChanged DiffChange
hi! link diffRemoved DiffDelete

call s:hi("gitconfigVariable", s:teal_gui, "", s:teal_term, "", "", "")

call s:hi("goBuiltins", s:teal_gui, "", s:teal_term, "", "", "")
hi! link goConstants Keyword

call s:hi("helpBar", s:polar_light_gui, "", s:polar_light_term, "", "", "")
call s:hi("helpHyperTextJump", s:teal_light_gui, "", s:teal_light_term, "", s:underline, "")

call s:hi("htmlArg", s:teal_gui, "", s:teal_term, "", "", "")
call s:hi("htmlLink", s:silver_gui, "", "", "", "NONE", "NONE")
hi! link htmlBold Bold
hi! link htmlEndTag htmlTag
hi! link htmlItalic Italic
hi! link htmlH1 markdownH1
hi! link htmlH2 markdownH1
hi! link htmlH3 markdownH1
hi! link htmlH4 markdownH1
hi! link htmlH5 markdownH1
hi! link htmlH6 markdownH1
hi! link htmlSpecialChar SpecialChar
hi! link htmlTag Keyword
hi! link htmlTagN htmlTag

call s:hi("javaDocTags", s:teal_gui, "", s:teal_term, "", "", "")
hi! link javaCommentTitle Comment
hi! link javaScriptBraces Delimiter
hi! link javaScriptIdentifier Keyword
hi! link javaScriptNumber Number

call s:hi("jsonKeyword", s:teal_gui, "", s:teal_term, "", "", "")

call s:hi("lessClass", s:teal_gui, "", s:teal_term, "", "", "")
hi! link lessAmpersand Keyword
hi! link lessCssAttribute Delimiter
hi! link lessFunction Function
hi! link cssSelectorOp Keyword

hi! link lispAtomBarSymbol SpecialChar
hi! link lispAtomList SpecialChar
hi! link lispAtomMark Keyword
hi! link lispBarSymbol SpecialChar
hi! link lispFunc Function

hi! link luaFunc Function

call s:hi("markdownBlockquote", s:teal_gui, "", s:teal_term, "", "", "")
call s:hi("markdownCode", s:teal_gui, "", s:teal_term, "", "", "")
call s:hi("markdownCodeDelimiter", s:teal_gui, "", s:teal_term, "", "", "")
call s:hi("markdownFootnote", s:teal_gui, "", s:teal_term, "", "", "")
call s:hi("markdownId", s:teal_gui, "", s:teal_term, "", "", "")
call s:hi("markdownIdDeclaration", s:teal_gui, "", s:teal_term, "", "", "")
call s:hi("markdownH1", s:teal_light_gui, "", s:teal_light_term, "", "", "")
call s:hi("markdownLinkText", s:teal_light_gui, "", s:teal_light_term, "", "", "")
call s:hi("markdownUrl", s:silver_gui, "", "NONE", "", "NONE", "")
hi! link markdownBold Bold
hi! link markdownBoldDelimiter Keyword
hi! link markdownFootnoteDefinition markdownFootnote
hi! link markdownH2 markdownH1
hi! link markdownH3 markdownH1
hi! link markdownH4 markdownH1
hi! link markdownH5 markdownH1
hi! link markdownH6 markdownH1
hi! link markdownIdDelimiter Keyword
hi! link markdownItalic Italic
hi! link markdownItalicDelimiter Keyword
hi! link markdownLinkDelimiter Keyword
hi! link markdownLinkTextDelimiter Keyword
hi! link markdownListMarker Keyword
hi! link markdownRule Keyword
hi! link markdownHeadingDelimiter Keyword

call s:hi("perlPackageDecl", s:teal_gui, "", s:teal_term, "", "", "")

call s:hi("phpClasses", s:teal_gui, "", s:teal_term, "", "", "")
call s:hi("phpDocTags", s:teal_gui, "", s:teal_term, "", "", "")
hi! link phpDocCustomTags phpDocTags
hi! link phpMemberSelector Keyword

call s:hi("podCmdText", s:teal_gui, "", s:teal_term, "", "", "")
call s:hi("podVerbatimLine", s:silver_gui, "", "NONE", "", "", "")
hi! link podFormat Keyword

hi! link pythonBuiltin Type
hi! link pythonEscape SpecialChar

call s:hi("rubyConstant", s:teal_gui, "", s:teal_term, "", "", "")
call s:hi("rubySymbol", s:white_gui, "", s:white_term, "", "bold", "")
hi! link rubyAttribute Identifier
hi! link rubyBlockParameterList Operator
hi! link rubyInterpolationDelimiter Keyword
hi! link rubyKeywordAsMethod Function
hi! link rubyLocalVariableOrMethod Function
hi! link rubyPseudoVariable Keyword
hi! link rubyRegexp SpecialChar

call s:hi("sassClass", s:teal_gui, "", s:teal_term, "", "", "")
call s:hi("sassId", s:teal_gui, "", s:teal_term, "", s:underline, "")
hi! link sassAmpersand Keyword
hi! link sassClassChar Delimiter
hi! link sassControl Keyword
hi! link sassControlLine Keyword
hi! link sassExtend Keyword
hi! link sassFor Keyword
hi! link sassFunctionDecl Keyword
hi! link sassFunctionName Function
hi! link sassidChar sassId
hi! link sassInclude SpecialChar
hi! link sassMixinName Function
hi! link sassMixing SpecialChar
hi! link sassReturn Keyword

hi! link shCmdParenRegion Delimiter
hi! link shCmdSubRegion Delimiter
hi! link shDerefSimple Identifier
hi! link shDerefVar Identifier

hi! link sqlKeyword Keyword
hi! link sqlSpecial Keyword

call s:hi("vimAugroup", s:teal_gui, "", s:teal_term, "", "", "")
call s:hi("vimMapRhs", s:teal_gui, "", s:teal_term, "", "", "")
call s:hi("vimNotation", s:teal_gui, "", s:teal_term, "", "", "")
hi! link vimFunc Function
hi! link vimFunction Function
hi! link vimUserFunc Function

call s:hi("xmlAttrib", s:teal_gui, "", s:teal_term, "", "", "")
call s:hi("xmlCdataStart", s:polar_light_gui, "", s:polar_light_term, "", "bold", "")
call s:hi("xmlNamespace", s:teal_gui, "", s:teal_term, "", "", "")
hi! link xmlAttribPunct Delimiter
hi! link xmlCdata Comment
hi! link xmlCdataCdata xmlCdataStart
hi! link xmlCdataEnd xmlCdataStart
hi! link xmlEndTag xmlTagName
hi! link xmlProcessingDelim Keyword
hi! link xmlTagName Keyword

call s:hi("yamlBlockMappingKey", s:teal_gui, "", s:teal_term, "", "", "")
hi! link yamlBool Keyword
hi! link yamlDocumentStart Keyword

"+----------------+
"+ Plugin Support +
"+----------------+
"+--- UI ---+
" ALE
" > w0rp/ale
call s:hi("ALEWarningSign", s:yellow_gui, "", s:yellow_term, "", "", "")
call s:hi("ALEErrorSign" , s:red_gui, "", s:red_term, "", "", "")

" GitGutter
" > airblade/vim-gitgutter
call s:hi("GitGutterAdd", s:green_gui, "", s:green_term, "", "", "")
call s:hi("GitGutterChange", s:yellow_gui, "", s:yellow_term, "", "", "")
call s:hi("GitGutterChangeDelete", s:red_gui, "", s:red_term, "", "", "")
call s:hi("GitGutterDelete", s:red_gui, "", s:red_term, "", "", "")

" Signify
" > mhinz/vim-signify
call s:hi("SignifySignAdd", s:green_gui, "", s:green_term, "", "", "")
call s:hi("SignifySignChange", s:yellow_gui, "", s:yellow_term, "", "", "")
call s:hi("SignifySignChangeDelete", s:red_gui, "", s:red_term, "", "", "")
call s:hi("SignifySignDelete", s:red_gui, "", s:red_term, "", "", "")

" fugitive.vim
" > tpope/vim-fugitive
call s:hi("gitcommitDiscardedFile", s:red_gui, "", s:red_term, "", "", "")
call s:hi("gitcommitUntrackedFile", s:red_gui, "", s:red_term, "", "", "")
call s:hi("gitcommitSelectedFile", s:green_gui, "", s:green_term, "", "", "")

" davidhalter/jedi-vim
call s:hi("jediFunction", s:silver_gui, s:polar_light_gui, "", s:polar_light_term, "", "")
call s:hi("jediFat", s:teal_light_gui, s:polar_light_gui, s:teal_light_term, s:polar_light_term, s:underline."bold", "")

" NERDTree
" > scrooloose/nerdtree
call s:hi("NERDTreeExecFile", s:teal_gui, "", s:teal_term, "", "", "")
hi! link NERDTreeDirSlash Keyword
hi! link NERDTreeHelp Comment

" CtrlP
" > ctrlpvim/ctrlp.vim
hi! link CtrlPMatch Keyword
hi! link CtrlPBufferHid Normal

" vim-plug
" > junegunn/vim-plug
call s:hi("plugDeleted", s:red_gui, "", "", s:red_term, "", "")

" vim-signature
" > kshenoy/vim-signature
call s:hi("SignatureMarkText", s:teal_light_gui, "", s:teal_light_term, "", "", "")

"+--- Languages ---+
" JavaScript
" > pangloss/vim-javascript
call s:hi("jsGlobalNodeObjects", s:teal_light_gui, "", s:teal_light_term, "", s:italic, "")
hi! link jsBrackets Delimiter
hi! link jsFuncCall Function
hi! link jsFuncParens Delimiter
hi! link jsThis Keyword
hi! link jsNoise Delimiter
hi! link jsPrototype Keyword
hi! link jsRegexpString SpecialChar

" Markdown
" > plasticboy/vim-markdown
call s:hi("mkdCode", s:teal_gui, "", s:teal_term, "", "", "")
call s:hi("mkdFootnote", s:teal_light_gui, "", s:teal_light_term, "", "", "")
call s:hi("mkdRule", s:blue_gui, "", s:blue_term, "", "", "")
call s:hi("mkdLineBreak", s:blue_light_gui, "", s:blue_light_term, "", "", "")
hi! link mkdBold Bold
hi! link mkdItalic Italic
hi! link mkdString Keyword
hi! link mkdCodeStart mkdCode
hi! link mkdCodeEnd mkdCode
hi! link mkdBlockquote Comment
hi! link mkdListItem Keyword
hi! link mkdListItemLine Normal
hi! link mkdFootnotes mkdFootnote
hi! link mkdLink markdownLinkText
hi! link mkdURL markdownUrl
hi! link mkdInlineURL mkdURL
hi! link mkdID Identifier
hi! link mkdLinkDef mkdLink
hi! link mkdLinkDefTarget mkdURL
hi! link mkdLinkTitle mkdInlineURL
hi! link mkdDelimiter Keyword

" Vimwiki
" > vimwiki/vimwiki
if !exists("g:vimwiki_hl_headers") || g:vimwiki_hl_headers == 0
  for s:i in range(1,6)
    call s:hi("VimwikiHeader".s:i, s:teal_light_gui, "", s:teal_light_term, "", "bold", "")
  endfor
else
  let s:vimwiki_hcolor_guifg = [s:teal_gui, s:teal_light_gui, s:blue_light_gui, s:blue_gui, s:green_gui, s:magenta_gui]
  let s:vimwiki_hcolor_ctermfg = [s:teal_term, s:teal_light_term, s:blue_light_term, s:blue_term, s:green_term, s:magenta_term]
  for s:i in range(1,6)
    call s:hi("VimwikiHeader".s:i, s:vimwiki_hcolor_guifg[s:i-1] , "", s:vimwiki_hcolor_ctermfg[s:i-1], "", "bold", "")
  endfor
endif

call s:hi("VimwikiLink", s:teal_light_gui, "", s:teal_light_term, "", s:underline, "")
hi! link VimwikiHeaderChar markdownHeadingDelimiter
hi! link VimwikiHR Keyword
hi! link VimwikiList markdownListMarker

" YAML
" > stephpy/vim-yaml
call s:hi("yamlKey", s:teal_gui, "", s:teal_term, "", "", "")
