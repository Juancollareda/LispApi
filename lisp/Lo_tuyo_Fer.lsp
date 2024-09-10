(defun c:tomartxt()
(defun tabla (TITULO LISTA POINT ALTTEXT / ActiveDocument mSpace pt
              myTable nRows nCols row cell altfilas filas columnas )
  (vl-load-com)
  (setq ActiveDocument (vla-get-activedocument
             (vlax-get-acad-object)))
  (setq mSpace(vla-get-modelspace ActiveDocument))
  
  
  (setq pt (vlax-make-safearray vlax-vbDouble
                                   '(0 . 2)))
  (SETQ FILAS (+ 1(LENGTH LISTA))
	cOLUMNAS (LENGTH (CAR LISTA))
	ALTFILAS (* ALTTEXT 1.2))
  
  ;insertion point for the table
  (vlax-safearray-fill pt POINT)
  (setq myTable
     (vla-addtable mSpace (vlax-3d-point point) filas columnas ALTFILAS (* 1.1 (anchotext 2 lista))))
  (vla-setcelltextheight myTable 0 0 ALTTEXT)
  (vla-settext myTable 0 0 TITULO)
 
  ;rows and columns zero based
(while t 
(setq ent (car (entsel "selecione objeto")))
(setq vobject(vlax-ename->vla-object ent))
(setq vobjstring (vla-get-textstring vobject))
(setq archivo (open "../texto.csv" "a"))
(write-line (strcat " " vobjstring ) archivo)
(close archivo)
)
)
