;+
;  NAME
;    PWD
;  PURPOSE
;    Show current work path
;  HISTORY
;    2015/09/18 Created by Chenxing Dong
;
pro pwd
cd, current=currentpath
print, currentpath
end
