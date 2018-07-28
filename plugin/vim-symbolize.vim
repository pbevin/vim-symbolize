if exists("g:loaded_symbolize") || &cp || v:version < 700
  finish
endif
let g:loaded_symbolize = 1

function! s:SymToStr()
  let ch = matchstr(getline('.'), '\%' . col('.') . 'c.')
  if ch != ":"
    normal! F:
  endif
  normal! r"
  normal! e
  normal! a"
endfunction

function! s:StrToSym()
  let ch = matchstr(getline('.'), '\%' . col('.') . 'c.')
  if ch != '"'
    normal! F"
  endif
  normal! r:
  normal! f"
  normal! x
endfunction

"symbol to string
" nnoremap <Silent> <Plug>SymToStr lF:xysiw"
nnoremap <silent> <Plug>SymToStr :call <SID>SymToStr()<CR>

"string to symbol
nnoremap <silent> <Plug>StrToSym :call <SID>StrToSym()<CR>

silent! call repeat#set("\<Plug>SymToStr", v:count)
silent! call repeat#set("\<Plug>StrToSym", v:count)
