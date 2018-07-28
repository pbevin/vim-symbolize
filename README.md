# vim-symbolize

Vim-symbolize adds two commands for converting back and forth between
symbols and strings in Ruby:

  * SymToStr changes `:foo` into `"foo"`
  * StrToSym changes `"foo"` into `:foo`

Suggested bindings:

    nmap <Leader>sa <Plug>SymToStr
    nmap <Leader>ss <Plug>StrToSym
