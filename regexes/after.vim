set gdefault " Operate on all matches by default

" Use the best ampersand for titling
silent! %s/\v^(\\.*section.*)\\\&(.*)/\1\\oldand{}\2/
silent! %s/\v^(\\.*chapter.*)\\\&(.*)/\1\\oldand{}\2/
silent! %s/\v^(\\title\{.*) \\\&(.*)/\1\\\\oldand{}\2/

" Delete pandoc's code that prohibits custom labels on ordered lists. You can
" comment this part out if you use the many different kinds of list in pandoc's
" markdown; such as i. ii. iii. and a. b. c
silent! g/\\def\\labelenumi/d
silent! g/\\tightlist/d

" Replace pandoc's conversion of ... or … into \ldots{} with converting to the
" Unicode character to make sure the amount of spacing between the three
" ellipses is consistent with what the typeface's designer(s) intended
silent! %s/\\ldots{}/…/
