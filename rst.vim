set cpo&vim
syn region  rstLiteralBlock
      \ start='\(^\z(\s*\).*\)\@<=::\(\s*$\)\@='
      \ skip='^$' end='^\(\z1\s\+\)\@!'
