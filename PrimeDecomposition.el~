;; This buffer is for notes you don't want to save, and for Lisp evaluation.
;; If you want to create a file, visit that file with C-x C-f,
;; then enter the text in that file's own buffer.

(defun dec(nombre)
(setq divisor 2)
(message " Les diviseurs de %d sont :" nombre)
(while (<= (* divisor divisor) nombre)
  (if (eq (% nombre divisor) 0)
      (progn
	(message "Un diviseur est %d" divisor)
	(setq nombre (/ nombre divisor)))
    (setq divisor ( + 1 divisor))
))
(message " Un diviseur est %d" nombre)
'Merci)


(dec 103)



