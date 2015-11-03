Steps to reproduce:

- valgrind vim -u rst.vim --noplugins example.rst
- type ':q' and press enter

Ignore the fact that the output doesn't look syntax-highlighted.  Watch for
valgrind errors.
