set shiftwidth=4
set tabstop=4
set noexpandtab

if version < 600
  syntax clear
elseif exists("b:current_syntax")
  finish
endif

" Comments
syn region  gopherComment   start="#"   end="$"


" Format of line:
"   Xname<TAB>selector<TAB>host<TAB>port

" File type
syn match   gopherType  "^[0135678ghiIds;cM\*\.]"

" Name
syn region  gopherName  start="^[0135678ghiIds;cM\*\.]"lc=1 end="$" oneline
syn region  gopherName  start="^[0135678ghiIds;cM\*\.]"lc=1 end="\t"me=e-1 oneline

" Port
syn match   gopherPort  "\t\d\+$"

" URL
syn match   gopherURL   "\tURL:"
syn region  gopherLink   start="\tURL:"lc=5   end="\t"me=e-1


hi def link gopherComment   comment
hi def link gopherType      statement
hi def link gopherURL       statement
hi def link gopherLink      underlined
hi def link gopherName      identifier
hi def link gopherPort      constant
