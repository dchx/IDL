;
; Given the contents of all text messages received by a phone,
; find all accounts registered by this phone number, assuming
; most companies put their names in []/【】 etc in the beginning 
; of their text messages
;
pro duanxin
readcol,'duanxin.txt',a,format='A'
b=['Account list']
sign=[['【','】'], 
      ['[',']'], 
      ['（','）']]
sizesign=size(sign)
for signline=0,sizesign(2)-1 do begin
	for i=0,n_elements(a)-1 do begin
		linearray=strsplit(a(i),sign(0,signline),/extract)
		for j=0,n_elements(linearray)-1 do begin
			rightpos=strpos(linearray(j),sign(1,signline))
			if rightpos ne -1 then begin
				accountname=strmid(linearray(j),0,rightpos)
				repeet=0
				for k=0,n_elements(b)-1 do begin
					if accountname eq b(k) then repeet=1
				endfor
				if repeet eq 0 then b=[[b],[accountname]]
			endif
		endfor
	endfor
endfor
print,b
end
