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
            \ LINK
            \ UNLINK
            \ PURGE
            \ LOCK
            \ UNLOCK
            \ PROPFIND
            \ VIEW
            \ nextgroup=hurl_url skipwhite
syntax match hurl_url "\S\+" contained
hi def link hurl_methods Constant
hi def link hurl_url Identifier

syntax keyword hurl_filter
            \ count
            \ regex
            \ urlEncode
            \ urlDecode
            \ htmlEscape
            \ htmlUnescape
hi def link hurl_filter Operator
syn keyword hurl_operator == != > >= < <= not
hi def link hurl_operator Operator

syn keyword hurl_keywords 
            \ body
            \ cookie
            \ duration
            \ header
            \ jsonpath
            \ regex
            \ sha256
            \ md5
            \ status
            \ xpath
            \ duration
            \ bytes
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
syntax match hurl_predicate "contains"
hi def link hurl_predicates Type

syntax match hurl_section '\v\[(Asserts|Captures|Options)\]'
syntax match hurl_section '\v\[(FormParams|MultipartFormData)\]'
syntax match hurl_section '\v\[(Cookies|QueryStringParams)\]'
hi def link hurl_section PreProc

syntax match hurl_url '\vhttp[s]*:\/\/\f+'
hi def link hurl_url Character

syntax match hurl_comment '#.*'
hi def link hurl_comment Comment

syntax region hurl_string start='"' end='"'
hi def link hurl_string String

let b:current_syntax = 'hurl'
