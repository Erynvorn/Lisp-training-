;; This buffer is for text that is not saved, and for Lisp evaluation.
;; Sum all integers from a to b
;; if a is larger than b, we exit.

(defun sumint (a b)
  (if (> a b)
      0
      (+ a ( sumint (+ 1 a) b))))


;; sum of squares on interval

(defun square (a)
  (* a a))

(defun sumsqr (a b)
  (if (> a b)
      0
      (+ (square a) (sumsqr (+ 1 a) b))))

(defun SUM (TERM A NEXT B)
  (IF (> A B)
      0
      (+ (funcall TERM A)
	 (SUM TERM
	      (funcall NEXT A)
	      NEXT
	      B))))

(defun Idntty (x)
  x)

(defun Plusone (x)
  (+ 1 x))

(defun suminteger ( a b )
  (SUM (lambda (x) (+ 0 x))  a (lambda (y) (+ 1 y)) b))

(defun oneplus (z)
  (1+ z))

(defun suminterplus ( a b )
  (SUM #'Idntty a #'1+  b))
