(defun c:PolloCotas()
(defun excel(cota cot2 tipo_medida Nombre)
   (setq valores (rtos cota))
   (setq valoreS2 (rtos cot2))
   (princ valores)
   (setq archivo (open "C:\\Users\\usuario\\Desktop\\lisp\\nuevo.csv" "a"))
   (write-line (strcat nombre "\n") archivo)
   (write-line (strcat "," "Altura" "," "Longitud") archivo)
   (write-line (strcat "esto es valor" "," valores "," valores2) archivo)
   (close archivo)
   )
  (setq lista)
  (setq valor (getint "\n cantidad de midas a tomar (se recordar mide alt y altura): "))
  (setq Nom (getstring "\n Nombre de figura: "))
  (setq test 1)
  (while (<= test valor)
  (setq pto1(getpoint "\n dame un punto altura : "))
  (setq pto2(getpoint "\n dame otro punto altura :"))
  (setq distancia (distance pto1 pto2))
  (setq pto1(getpoint "\n dame un punto longitud: "))
  (setq pto2(getpoint "\n dame otro punto longitud: "))
  (setq distancia2 (distance pto1 pto2))
  (excel distancia distancia 2 medida nom)
  (setq test (1+ test))
)
)