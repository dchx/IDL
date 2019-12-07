;+
;  NAME
;    LS
;  PURPOSE
;    Show files in current directory
;  USAGE
;    ls(, name)
;  KEYWORDS
;    name - searched file name (string)
;           example: '*.txt' (list all .txt files)
;  HISTORY
;    2015/10/10 Created by Chenxing Dong
;
pro ls, name
if keyword_set(name) then begin
	if n_elements(file_search(name)) eq 1 then begin
		if file_search(name) eq '' then $
			print, 'No such file.' $
		else $
			print,file_search(name)
	endif else begin
			print,transpose(file_search(name))
	endelse
endif else begin
	if n_elements(file_search()) eq 1 then begin
		if file_search() eq '' then $
			print, 'No files.' $
		else $
			print,file_search()
	endif else begin
			print,transpose(file_search())
	endelse
endelse
end
