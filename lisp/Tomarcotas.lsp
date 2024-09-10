;;;Esta es una demo hecha por Collareda Juan ignacio v1
;;;mail: Collareda.juani@hotmail.com
;;;Etapa de de desarollo Fase 1 Demo 11/03/2021
;;;1 A agregar para siguiente etapa
;;;2 funcion area
;;;3 no pedir longitud tomar valores de cota auto
;;;4 acelerar rutina
;;;5 renombrar archivo creado
;;;6 opcion de cambiar la ruta al desktop cambiar
;;;7 manejo de errores 
(defun c:AuCotas()
(setq i 0)
(list '("a" "b" "c" "d" "e" "f" "g" "h" "i" "j" "k" "m" "n" "o" "p" "q" "r" "s" "t" "u" "v" "w" "x"))
(setq valor (getint "\n cantidad de midas a tomar (se recordar mide alt y altura): "))
(setq Nom (getstring "\n Nombre de figura: "))
(setq test 1)
(while (<= test valor)
(setq pto1(getpoint "\n dame un punto altura : "))
(setq pto2(getpoint "\n dame otro punto altura :"))
(setq distancia (rtos(distance pto1 pto2)))
(setq pto1(getpoint "\n dame un punto longitud: "))
(setq pto2(getpoint "\n dame otro punto longitud: "))
(setq distancia2 (rtos(distance pto1 pto2)))
(setq x (car(entsel "elija objeto")))
(setq vlaobj (vlax-ename->vla-object e))
(setq num (vlax-get-property vlaobj 'Area))
(setq area (rtos(* 1.0 num ) 2))
(setq archivo (open "C:\\Users\\usuario\\Desktop\\Area.csv" "a"))
(setq x (car(entsel "elija objeto")))
(setq vlaobj (vlax-ename->vla-object x))
(setq num (vlax-get-property vlaobj 'Area))
(setq area (rtos(* 1.0 num ) 2))
(write-line Nom archivo)
(write-line (strcat " " "," "Altura" "," "longitud" "," "Area") archivo)
(write-line (strcat (nth i 'list ) "," distancia "," distancia2 "," area) archivo)
(close archivo)
(setq test (1+ test))
(setq i (1+ i))

)
)