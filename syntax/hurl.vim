if v:version < 600
  syntax clear
elseif exists('b:current_syntax')
  finish
endif

syn case ignore

syn keyword hurl_keywords 
            \ GET
            \ POST
            \ cookie
            \ duration
            \ exists
            \ header
            \ xpath

hi def link hurl_keywords keyword

syntax match hurl_section '\[Asserts\]'
hi def link hurl_section PreProc

syntax match hurl_url '\vhttp[s]*:\/\/\f+'
hi def link hurl_url Character

syntax match hurl_comment '#.*'
hi def link hurl_comment Comment


let b:current_syntax = 'jrnl'
