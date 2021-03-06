if v:version < 600
  syntax clear
elseif exists('b:current_syntax')
  finish
endif

syn keyword hurl_methods
            \ GET
            \ POST
            \ PUT
            \ DELETE
            \ CONNECT
            \ OPTIONS
            \ TRACE
            \ PATCH
hi def link hurl_methods Constant

syn keyword hurl_keywords 
            \ body
            \ cookie
            \ duration
            \ header
            \ jsonpath
            \ regex
            \ sha256
            \ status
            \ xpath

hi def link hurl_keywords keyword

syn keyword hurl_predicates
            \ startsWith
            \ endsWith
            \ exists
            \ includes
            \ isBoolean
            \ isCollection
            \ isFloat
            \ isInteger
            \ isString
            \ matches

hi def link hurl_predicates Type

syntax match hurl_section '\v\[(Asserts|Captures|FormParams)\]'
hi def link hurl_section PreProc

syntax match hurl_url '\vhttp[s]*:\/\/\f+'
hi def link hurl_url Character

syntax match hurl_comment '#.*'
hi def link hurl_comment Comment

syntax region hurl_string start='"' end='"'
hi def link hurl_string String

let b:current_syntax = 'hurl'
