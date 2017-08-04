;; This buffer is for text that is not saved, and for Lisp evaluation.
;; To create a file, visit it with C-x C-f and enter text in its buffer.

(defun plus2 ( x y)
  (if (= x 0)
      y
    (plus2 (1- x) (1+ y))))

(defun plus3 (x y)
  (if (= x 0)
      y
    (1+ (plus3 (1- x) y))))
