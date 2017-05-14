;; This buffer is for notes you don't want to save, and for Lisp evaluation.
;; If you want to create a file, visit that file with C-x C-f,
;; then enter the text in that file's own buffer.

 (defun bmi(poids hauteur)
(/ poids (* hauteur hauteur)))

(bmi 84.5 1.79)