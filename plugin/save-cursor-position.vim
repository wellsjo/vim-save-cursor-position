
" Start the cursor from where you last left off in the file
autocmd BufReadPost * call s:SetCursorPosition()
function! s:SetCursorPosition()
  if &filetype !~ 'svn\|commit\c'
    if line("'\"") > 0 && line("'\"") <= line("$")
      exe "normal! g`\""
      normal! zz
    endif
  end
endfunction
