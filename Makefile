test:
	# uses my vim wrapper that supports --valgrind
	vim --valgrind -u rst.vim --noplugins example.rst +redraw +q
	! grep 'Conditional jump or move depends on uninitialised value' valgrind.log
