
augroup vimSaveCursorPosition
  au!
  " Start the cursor from where you last left off in the file
   au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
