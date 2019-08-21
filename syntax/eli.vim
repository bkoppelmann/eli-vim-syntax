" Vim syntax file
" Language:    Scala
" Version:     0.1
" Maintainer:  Raphael Haberer-Proust <raphael.haberer-proust at epfl.ch>
" URL:         http://diwww.epfl.ch/~haberer/syntax/scala.html
" Last Change: 2004 April 18
" Disclaimer:  It's an absolut basic, very simple and by far not finished
" syntax file! It only recognizes basic keywords and  constructs like comments
" any help is welcome

" Remove any old syntax stuff
syn clear


" Comments
syn region eliComment       start="/\*" end="\*/"

" Keywords
syn keyword eliKeyword RULE COMPUTE END SYMBOL ATTR CHAIN CHAINSTART TREE INHERITS

" Number
syn match eliNumber /[0-9]\+/

" String
syn region eliString start=/'/ end=/'/

if !exists("did_eli_syntax_inits")
    let did_eli_syntax_inits = 1

    " The default methods for highlighting. Can be overridden later
    hi link eliComment        Comment
    hi link eliKeyword        Keyword
    hi link eliNumber         Number
    hi link eliString         String
endif

let b:current_syntax = "eli"
