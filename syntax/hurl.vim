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
hi def link hurl_predicate Type

syn match hurl_http_version
            \ "\vHTTP/([*]|1\.0|1\.1|2)"
            \ nextgroup=hurl_status skipwhite
syntax match hurl_status "[0-9]\+" contained
hi def link hurl_version Statement
hi def link hurl_status Number

syntax match hurl_section '\v\[(Asserts|Captures|Options)\]'
syntax match hurl_section '\v\[(FormParams|MultipartFormData)\]'
syntax match hurl_section '\v\[(Cookies|QueryStringParams)\]'
hi def link hurl_section PreProc


syntax match hurl_url '\vhttp[s]*:\/\/\f+'
hi def link hurl_url Character

syntax match hurl_comment '#.*$'
hi def link hurl_comment Comment

syntax match hurl_escaped_hashmark "\\#"
syntax match hurl_escaped_quote "\\\""
syntax region hurl_string start='"' end='"' contains=hurl_escaped_quote
hi def link hurl_string String

let b:current_syntax = 'hurl'
