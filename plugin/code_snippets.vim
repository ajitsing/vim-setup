nnoremap <leader>rc :call CreateRubyClass()<cr>
inoremap <leader>rc <ESC>:call CreateRubyClass()<cr>

nnoremap <leader>rm :call CreateRubyMethod()<cr>
inoremap <leader>rm <ESC>:call CreateRubyMethod()<cr>

function! CreateRubyClass()
	execute "normal! iclass ClassName\<cr>end\<ESC>k^wviw\<c-g>"
endfunction

function! CreateRubyMethod()
	execute "normal! idef method_name\<cr>end\<ESC>k2>>^wviw\<c-g>"
endfunction
