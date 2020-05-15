aug space
  au!
  autocmd BufWritePre *.{c,cpp,py} :%s/\s\+$//e
aug END
