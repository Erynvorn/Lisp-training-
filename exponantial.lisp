(defun exptds (x n)
  (if (= n 0)
      1
      (* x (exptds x (- n 1)))))


(defun extint (x n p)
      (if (= n 0)
	  p
	  (extint x (- n 1) (* x p))))

(defun exptds2 (x n)
    ( extint x n 1))


(defun square (x) (* x x))

(defun fast-expt (x n)
  (cond ((= n 0) 1)
	((evenp n) (square (fast-expt x (/ n 2))))
	((oddp n) (* x (fast-expt x  (- n 1) )))))
