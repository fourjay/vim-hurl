" Vim filetype plugin.
"
" Only do this when not done yet for this buffer
if exists('b:did_ftplugin') | finish | endif

" Don't load another filetype plugin for this buffer
let b:did_ftplugin = 1

" Allow use of line continuation.
let s:save_cpo = &cpoptions
set cpoptions&vim
setlocal foldmethod=expr
setlocal foldexpr=hurl#fold(v:lnum)

let &cpoptions = s:save_cpo
