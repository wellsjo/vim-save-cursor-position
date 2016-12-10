" Starts the cursor from where you last left off in the file
augroup vimSaveCursorPosition
  au!
  au BufReadPost * if line("'\"") | execute("normal `\"") | endif
