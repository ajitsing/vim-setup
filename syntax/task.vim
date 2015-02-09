if exists("b:current_syntax")
	  finish
endif

syntax keyword doneKeyword Done done
syntax keyword pendingKeyword WIP wip
syntax match taskOperator "\v-"
syn region Title start=+[A-Za-z]+ end=+:+ oneline

highlight taskOperator cterm=bold term=bold ctermbg=black ctermfg=Brown
highlight Title ctermbg=black ctermfg=yellow
highlight Title cterm=bold term=bold ctermbg=black ctermfg=LightBlue
highlight doneKeyword ctermbg=black ctermfg=green
highlight pendingKeyword ctermbg=black ctermfg=red
let b:current_syntax = "task"
