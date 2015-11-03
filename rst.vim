set cpo&vim

" normal paragraph + literal block
syn region  rstLiteralBlock         matchgroup=rstDelimiter
      \ start='\(^\z(\s*\).*\)\@<=::\(\s*$\)\@='
      \ skip='^$' end='^\(\z1\s\+\)\@!'
      \ contains=@NoSpell,rstDoctestBlock
