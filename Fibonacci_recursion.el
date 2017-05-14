(defun fib2(n)
(if (< n 2)
    (setq fig2 1)
  (setq fib2  (+ (fib2 (- n 1 )) (fib2 (- n 2)) )))
)

(fib2 6)
