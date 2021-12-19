" redirect the output of a Vim or external command into a scratch buffer
function! Redir(cmd)
  if a:cmd =~ '^!'
    execute "let output = system('" . substitute(a:cmd, '^!', '', '') . "')"
  else
    redir => output
    execute a:cmd
    redir END
  endif
  tabnew
  setlocal nobuflisted buftype=nofile bufhidden=wipe noswapfile
  call setline(1, split(output, "\n"))
  put! = a:cmd
  put = '----'
endfunction
command! -nargs=1 Redir silent call Redir(<f-args>)

function! s:Tmptmp()
    return toupper(expand('%:t:gs/[^0-9a-zA-Z_]/_/g'))
endfunction


function! g:Tmp1()
    call append(0, [ s:Tmptmp() ])
endfunction


command! -bar Tmp1 call g:Tmp1()
