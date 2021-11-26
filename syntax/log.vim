if exists("b:current_syntax")
	finish
endif

echom "log match go here"
syntax match errorLog "^\[ERROR\].*$"
syntax match warnLog "^\[WARNING\].*$"
syntax match infoLog "^\[INFO\].*$"
syntax match debugLog "^\[DEBUG\].*$"

highlight link errorLog Error
highlight link warnLog Statement
highlight link infoLog SpecialComment
highlight link debugLog Comment
echom "after hi link"

let b:current_syntax = "log"
