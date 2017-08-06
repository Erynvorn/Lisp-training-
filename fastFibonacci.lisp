(defun fib-iter (a b p q count)
  (cond ((= count 0) b)
        ((evenp count)
         (fib-iter a
                   b
                   (+ ( * p p) (* q q))      ; compute p'
                   (+ ( * 2 p q) (* q q ))     ; compute q'
                   (/ count 2)))
        ((oddp count)
	 (fib-iter (+ (* b q) (* a q) (* a p))
                        (+ (* b p) (* a q))
                        p
                        q
                        (- count 1)))))

(defun fastfib (n)
      (fib-iter 1 0 0 1 n))
