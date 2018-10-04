set gdefault " Operate on all matches by default

" Use the best ampersand for titling
silent! %s/\v^(\\.*section.*)\\\&(.*)/\1\\oldand{}\2/
silent! %s/\v^(\\.*title.*) \\\&(.*)/\1\\ \\oldand{}\2/

" Delete pandoc's code that prohibits custom labels on ordered lists. You can
" comment this part out if you use the many different kinds of list in pandoc's
" markdown; such as i. ii. iii. and a. b. c
silent! g/\\def\\labelenumi/d
silent! g/\\tightlist/d

" Skip a line above and below lists
" silent! %s/\v^(\\begin{(itemize|enumerate|description)})/\\vskipnextgrid\1/
" silent! %s/\v^(\\end{(itemize|enumerate|description)})/\1\\vskipnextgrid\\ignorespaces/

" Skip a line after section headings
" silent! %s/\v(\\.*section.*\n\n)/\1\\vskipnextgrid\\noindent\\ignorespaces /

" Fix some edge cases

" When you have a list right before/after a heading
" silent! %s/\v\\vskipnextgrid\\noindent\\ignorespaces (\\vskipnextgrid)/\1/
" silent! %s/\v\\vskipnextgrid\\ignorespaces(\n\n\\hyper)/\1/

" When you have a subsection after section
" silent %s/\v\\vskipnextgrid\\noindent\\ignorespaces (\\hypertarget)/\\vskipnextgrid\1/
