set number
syntax on
set hlsearch
cnoremap w!! execute 'silent! write !sudo tee % >/dev/null' <bar> edit!
