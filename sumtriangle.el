(defun sum_source(n)
(sum_helper 0 0 n))

(defun sum_helper(sum counter number)
(if (> counter number)
    sum
  (sum_helper (+ sum counter) (1+ counter) number))
) 

(sum_source 9)
