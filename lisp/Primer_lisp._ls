(defun c:primer_lisp()
  (setq pto1(getpoint "\nPrimer punto"))
  (setq pto2(getpoint "\nSegundo punto"))
  (command "_line" pto1 pto2 ""))