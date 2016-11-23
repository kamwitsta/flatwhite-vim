" ----------------------------------------------------------------- "
" name			flatwhite											"
" description	A Vim port of										"
"				https://github.com/biletskyy/flatwhite-syntax		"
" author		kamil.stachowski@gmail.com							"
" version		0.1 (2016.11.23)									"
" license		GPLv3+												"
" ----------------------------------------------------------------- "

" - preamble ---------------------------------------------------------------------------------- <<< -

let colors_name = "flatwhite"
set background=light

if version > 580
	hi clear
	if exists("syntax_on")
		syntax reset
	endif
endif
if version > 800
	set termguicolors
endif

function! s:hi(group, fg, bg, gui)
	let l:res = "hi " . a:group
	if a:fg != ""
		let l:res = l:res . " guifg=" . a:fg
	endif
	if a:bg != ""
		let l:res = l:res . " guibg=" . a:bg
	endif
	if a:gui != ""
		let l:res = l:res . " gui=" . a:gui
		let l:res = l:res . " cterm=". a:gui
	endif
	execute l:res
endfunction

" --------------------------------------------------------------------------------------------- >>> -
" - palette ----------------------------------------------------------------------------------- <<< -

let s:base1				= "#605a52"
let s:base2				= "#93836c"
let s:base3				= "#b9a992"
let s:base4				= "#dcd3c6"
let s:base5				= "#e4ddd2"
let s:base6				= "#f1ece4"
let s:base7				= "#f7f3ee"
let s:accent			= "#6a4cff"
let s:orange_text		= "#5b5143"
let s:orange_text_sec	= "#957f5f"
let s:orange_bg			= "#f7e0c3"
let s:green_text		= "#525643"
let s:green_text_sec	= "#81895d"
let s:green_bg			= "#e2e9c1"
let s:teal_text			= "#465953"
let s:teal_text_sec		= "#5f8c7d"
let s:teal_bg			= "#d2ebe3"
let s:blue_text			= "#4c5361"
let s:blue_text_sec		= "#7382a0"
let s:blue_bg			= "#dde4f2"
let s:purple_text		= "#614c61"
let s:purple_text_sec	= "#9c739c"
let s:purple_bg			= "#f1ddf1"
let s:diff_add			= "#2db448"
let s:diff_change		= "#f2a60d"
let s:diff_change_dark	= "#795306"
let s:diff_delete		= "#ff1414"
let s:diff_renamed		= "#52aeff"
let s:white				= "#ffffff"

" --------------------------------------------------------------------------------------------- >>> -
" - definitions ------------------------------------------------------------------------------- <<< -

call s:hi ("Comment",		s:base3,			s:base7,		"italic")
call s:hi ("Constant",		s:teal_text,		s:teal_bg,		"none")
call s:hi ("Cursor",		"",				"",					"none")
call s:hi ("CursorLine",	"",					s:base6,		"none")
call s:hi ("DiffAdd",		"",					s:diff_add,		"none")
call s:hi ("DiffChange",	"",					s:diff_change,	"none")
call s:hi ("DiffDelete",	"",					s:diff_delete,	"none")
call s:hi ("FoldColumn",	s:base3,			s:base6,		"none")
call s:hi ("Ignore",		s:base4,			s:base7,		"none")
call s:hi ("MatchParen",	s:accent,			s:base7,		"underline")
call s:hi ("ModeMsg",		s:teal_text,		s:teal_bg,		"bold")
call s:hi ("Normal",		s:base1,			s:base7,		"none")
call s:hi ("Search",		"",					s:base6,		"none")
call s:hi ("SpellBad",		s:white,			s:diff_delete,	"none")
call s:hi ("SpellRare",		s:diff_change_dark,	s:diff_change,	"none")
call s:hi ("Statement",		s:orange_text,		s:orange_bg,	"none")
call s:hi ("StatusLine",	s:base7,			s:base1,		"bold")
call s:hi ("StatusLineNC",	s:base1,			s:base3,		"none")
call s:hi ("String",		s:green_text,		s:green_bg,		"none")
call s:hi ("Type",			s:purple_text,		s:purple_bg,	"none")
call s:hi ("Underlined",	"",					"",				"underline")
call s:hi ("Visual",		"",					s:base5,		"none")


hi! link Boolean		Constant
hi! link Character		String
hi! link ColorColumn	Statement
hi! link Conceal		Comment
hi! link Conditional	Statement
hi! link CursorColumn	CursorLine
hi! link CursorIM		Cursor
hi! link CursorLineNr	Normal
hi! link Debug			Special
hi! link Define			PreProc
hi! link Delimiter		Special
hi! link DiffText		Normal
hi! link Directory		Type
hi! link EndOfBuffer	Ignore
hi! link Error			DiffDelete
hi! link ErrorMsg		Error
hi! link Exception		Statement
hi! link Float			Constant
hi! link Folded			Normal
hi! link Function		Identifier
hi! link Identifier		Normal
hi! link IncSearch		Search
hi! link Include		PreProc
hi! link Keyword		Statement
hi! link Label			Statement
hi! link LineNr			FoldColumn
hi! link Macro			PreProc
hi! link MoreMsg		Visual
hi! link NonText		Ignore
hi! link Number			Constant
hi! link Operator		Normal
hi! link Pmenu			StatusLineNC
hi! link PmenuSbar		StatusLineNC
hi! link PmenuSel		StatusLine
hi! link PmenuThumb		StatusLine
hi! link PreCondit		PreProc
hi! link PreProc		Type
hi! link Question		ModeMsg
hi! link Repeat			Statement
hi! link Scrollbar		PmenuSbar
hi! link SignColumn		FoldColumn
hi! link Special		Normal
hi! link SpecialChar	Special
hi! link SpecialComment	Special
hi! link SpecialKey		Special
hi! link SpellCap		SpellBad
hi! link SpellLocal		SpellRare
hi! link StorageClass	Type
hi! link Structure		Type
hi! link TabLine		StatusLineNC
hi! link TabLineFill	Normal
hi! link TabLineSel		StatusLine
hi! link Tag			Special
hi! link Title			Statement
hi! link Todo			Type
hi! link Typedef		Type
hi! link Underlined		Normal
hi! link VertSplit		StatusLineNC
hi! link VisualNOS		Visual
hi! link WarningMsg		DiffChange
hi! link WildMenu		StatusLineNC

" --------------------------------------------------------------------------------------------- >>> -


" vim: foldmarker=<<<,>>>
