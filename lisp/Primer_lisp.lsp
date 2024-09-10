(defun c:primer_lisp()
(defun grados(rg)
       (*(/ rg pi)180.0)
 )
  
  (setq pto1(getpoint "\nPrimer punto"))
  (setq pto2(getpoint "\nSegundo punto"))
  (setq dista(distance pto1 pto2))
  (setq rg(angle pto1 pto2))
  (command "_text" "_m2p" pto1 pto2 "" (grados rg)dista)



  )