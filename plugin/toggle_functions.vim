nnoremap <leader>N :call ToggleNumber()<cr>
nnoremap <leader>q :call QuickFixToggle()<cr>
nnoremap <leader>t :call TerminalToggle()<cr>

let g:terminal_is_open = 0

function! TerminalToggle()
	if g:terminal_is_open
		let command_to_quit_terminal_window = g:terminal_window . "wincmd w|:q"
		execute command_to_quit_terminal_window
		let g:terminal_is_open = 0
	else
		:execute 'ConqueTermSplit /bin/bash --login'	
		let g:terminal_is_open = 1
		let g:terminal_window = winnr()
	end
endfunction

let g:quick_fix_is_open = 0

function! QuickFixToggle()
	if g:quick_fix_is_open
		cclose
		let g:quick_fix_is_open = 0
	else
		copen
		let g:quick_fix_is_open = 1
	end
endfunction

function! ToggleNumber()
	if &nu == 1
		set nu!
	elseif &rnu == 1
		set nornu
	else
		set nu
	endif
endfunction
