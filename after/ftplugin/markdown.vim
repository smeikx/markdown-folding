setlocal foldmethod=expr
setlocal foldexpr=Get_Fold(v:lnum)

function Get_Fold(lnum)
	let h = matchstr(getline(a:lnum), '^#\+')
	if empty(h)
		return "="
	else
		return ">" . len(h)
	endif
endfunction

