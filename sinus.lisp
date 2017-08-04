(defun cube (x)
  (* x x x ))
(defun prod (x)
  (- (* 3 x) (* 4 (cube x))))
(defun sinus (x)
  (if (< (abs x) 0.0001)
      x
      (prod (sinus (/ x 3.0)))))


