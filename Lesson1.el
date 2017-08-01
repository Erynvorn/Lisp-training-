;; This buffer is for notes you don't want to save, and for Lisp evaluation.
;; If you want to create a file, visit that file with C-x C-f,
;; then enter the text in that file's own buffer.

 (+ 30 40)

(- 100 200)

(* 8 9 )

(/ 72 3)

(/ 4 3)

10

(defun square(x) (* x x))

(square 20)

(defun sum_of_square( x y) (+ (square x) (square y )))

(sum_of_square 3 4)

(defun abs (x)
  (cond ((> x 0) x)
        ((= x 0) 0)
        ((< x 0) (- x)))

(abs -3)

10
(+ 5 3 4)
(- 9 1)
(/ 6 2)
(+ (* 2 4) (- 4 6))
(setq a 3)
a
(setq b (+ a 1))
(+ a b (* a b))
(= a b)
(if (and (> b a) (< b (* a b)))
    b
    a)
(cond ((= a 4) 6)
      ((= b 4) (+ 6 7 a))
      (else 25))
(+ 2 (if (> b a) b a))
(* (cond ((> a b) a)
         ((< a b) b)
         (else -1))
   (+ a 1))

(defun sum_of_square2 (x y z)
 (cond ((and (> x y) (> y z)  )  (+ (square x) (square y)))
       ((and (> x y) (<= y z) )  (+ (square x) (square z)))
       ((and (<= x y) (> x z) )  (+ (square x) (square y)))
       ((and (<= x y) (<= x z))  (+ (square y) (square z)))))	      
       

(sum_of_square2 1 -2 -3)

(defun a-plus-abs-b (a b)
  (+ a (if (> b 0) b (- b)) ))

(a-plus-abs-b 2 -3)

(defun a-plus-abs (a b)
  ((if (> b 0) + -) a b))

(a-plus-abs 1 2)

(defun sqrt-iter (guess x)
  (if (good-enough? guess x)
      guess
      (sqrt-iter (improve guess x)
                 x)))

(defun improve (guess x)
  (average guess (/ x guess)))

(defun average (x y)
  (/ (+ x y) 2))

(defun good-enough? ( guess x)
  (< (abs (- (square guess) x)) 0.00001))

(defun sqrt (x)
  (sqrt-iter 1.0 x))

(sqrt 7)
(square (sqrt 2))



(sqrt 225)

(defun rt (x)
  (rt-iter 1.0 x))

(defun rt-iter (guess x)
  (if (good-enoughn? guess x)
      guess
    (rt-iter (improven guess x)
	     x)))

(defun improven (guess x)
  (/ (+ (* 2 guess) (/ x (* guess guess))) 3 ))

(defun good-enoughn? (guess x)
  (< (abs (- (* guess guess guess) x)) 0.001))

(rt 125)

(defun sqrt2 (x)
  (defun good-enough? (guess )
    (< (abs (- (square guess) x)) 0.001))
  (defun improve (guess )
    (average guess (/ x guess)))
  (defun sqrt-iter (guess )
    (if (good-enough? guess)
        guess
        (sqrt-iter (improve guess ))))
  (sqrt-iter 1.0))

(sqrt2 2)

(defun  factorial (n)
  (if (= n 1)
      1
      (* n (factorial (- n 1)))))

(factorial 6)

(defun A (x y)
  (cond ((= y 0) 0)
        ((= x 0) (* 2 y))
        ((= y 1) 2)
        ((A (- x 1)
                 (A x (- y 1))))))

(A 2 4)

function Ackerman



Fib recursive

(defun fib1 (n)
  (cond ((= n 0) 0)
	((= n 1) 1)
	((> n 1) (+ (fib1 (- n 1)) (fib1 (- n 2))))))

(fib1 5)
(fib1 6)
(fib1 11)

(defun fib2 (n)
  (iter-fib  1 0 n))

(defun iter-fib (a b count)
   (cond ((= count 0) b )
	 ((> count 0) (iter-fib (+ a b) a (- count 1)))))

(fib2 11)