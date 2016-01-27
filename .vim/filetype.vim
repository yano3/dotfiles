augroup filetypedetect
    autocmd BufRead,BufNewFile nginx.conf setfiletype nginx
    autocmd BufRead,BufNewFile [cC]apfile,*.cap setfiletype ruby
augroup END

