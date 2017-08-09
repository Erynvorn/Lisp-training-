(defun gcds ( a b)
  (if ( = b 0)
      a
      (gcds b (rem a b))))

(defun test (a b)
  (rem a b))

