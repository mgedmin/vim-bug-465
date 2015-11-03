set cpo&vim

" normal paragraph + literal block
syn region  rstLiteralBlock         matchgroup=rstDelimiter
      \ start='\(^\z(\s*\).*\)\@<=::\(\s*$\)\@='
      \ skip='^$' end='^\(\z1\s\+\)\@!'
      \ contains=@NoSpell,rstDoctestBlock
" bulleted list item + literal block
syn region  rstLiteralBlock         matchgroup=rstDelimiter
      \ start='\(^\z(\s*\)[-+*]\z(\s\+\).*\)\@<=::\(\s*$\)\@='
      \ skip='^$' end='^\(\z1 \z2\s\+\)\@!'
      \ contains=@NoSpell,rstDoctestBlock
" enumerated list item of the type "1.", "a)", "i.", or "#)" + literal block
syn region  rstLiteralBlock         matchgroup=rstDelimiter
      \ start='\(^\z(\s*\)[1-9A-Za-z#][.)]\z(\s\+\).*\)\@<=::\(\s*$\)\@='
      \ skip='^$' end='^\(\z1  \z2\s\+\)\@!'
      \ contains=@NoSpell,rstDoctestBlock
" enumerated list item of the type "10.", "14)", or "iv." + literal block
syn region  rstLiteralBlock         matchgroup=rstDelimiter
      \ start='\(^\z(\s*\)\%([1-9]\d\|[ivxlcdmIVXLCDM]\{2}\)[.)]\z(\s\+\).*\)\@<=::\(\s*$\)\@='
      \ skip='^$' end='^\(\z1   \z2\s\+\)\@!'
      \ contains=@NoSpell,rstDoctestBlock
" enumerated list item of the type "(1)" + literal block
syn region  rstLiteralBlock         matchgroup=rstDelimiter
      \ start='\(^\z(\s*\)([1-9A-Za-z#])\z(\s\+\).*\)\@<=::\(\s*$\)\@='
      \ skip='^$' end='^\(\z1   \z2\s\+\)\@!'
      \ contains=@NoSpell,rstDoctestBlock
" enumerated list item of the type "(14)" + literal block
syn region  rstLiteralBlock         matchgroup=rstDelimiter
      \ start='\(^\z(\s*\)(\%([1-9]\d\|[ivxlcdmIVXLCDM]\{2}\))\z(\s\+\).*\)\@<=::\(\s*$\)\@='
      \ skip='^$' end='^\(\z1    \z2\s\+\)\@!'
      \ contains=@NoSpell,rstDoctestBlock
