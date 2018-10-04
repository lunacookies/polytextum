set gdefault " Operate on all matches by default

" Abbreviations

" Run some regexes to convert abbreviations and acronyms into small caps. If
" a different kind of formatting for abbreviations/acronyms is desired, the
" \abbr command can be redefined.

" Matches any acceptable character (i.e. any character that will not be found in
" code that has to be capitalised (e.g. chemical equations)) with a space after,
" plus the abbreviation
silent! %s/\v([A-Za-z0-9.,:?;\)\"\x27}|#-] )([A-Z][A-Z]+)/\1\\abbr{\2}/

" Matches abbreviation at the start of a line
silent! %s/\v^([A-Z][A-Z]+)/\\abbr{\1}/

" Matches abbreviation after parentheses
silent! %s/\v\(([A-Z][A-Z]+)/\(\\abbr{\1}/

" Misc

" Converts markdown citations into BibLaTeX's format
silent! %s/\v\[\@(.+)\]/\\autocite{\1}/
