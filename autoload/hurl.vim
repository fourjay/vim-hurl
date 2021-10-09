function! hurl#fold(lnum) abort
    let l:line = getline(a:lnum)
    if l:line =~? '\v^\s*$'
        return '-1'
    " new fold on major commands
    elseif l:line =~# '\v^(GET|POST|POST|PUT|DELETE|TRACE|CONNECT|OPTIONS|PATCH)'
        return 0
    else
        return 1
    endif
endfunction
