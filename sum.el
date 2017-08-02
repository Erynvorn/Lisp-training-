(defun sumint (a b)
(if (> a b) 
    0
  (+ a (sumint (+ a 1) b))))

(sumint 1 100)

(defun sumsq (a b)
(if (> a b)
    0
  (+ (* a a) (sumsq (+ a 1) b))))

(sumsq 1 4)

(defun sumpi (a b)
(if (> a b)
    0
  (+ (/ 8 (* a (+ a 2)))
 (sumpi (+ a 4) b))))

(sumpi 1.0000 40.0000)

(defun sum (term a next b)
(if (> a b)
    0
  (+ (term a) 
(sum term (next a) next b))))

(defun sumint2 (a b)
(sum identity3 a 1+ b))

(defun identity3 (x) x)

(identity3 12)
(sumint2 1 3)


