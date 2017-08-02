;; test of ROT 
;; to learn how to manipule text

(defun rot13ds(input)
(message "hello world %s " input)

(if (string-match (format "%s" input) alphabet)
    (progn 

(setq alphabet "abcdefghijklmnopqrstuvwxyz")
(setq x (string-match (format "%s" input) alphabet)) ;; give position of character in alphabet (0-25)
(setq x (if x (% (+ 13 x ) 26) nil))
(if x (setq y (format "%c"  (elt alphabet x))) " ")
)
nil
))

(defun get-13-from (word)
  (apply #'concat (mapcar #'rot13ds word)))

(rot13ds "z" )
(get-13-from "abcz")

rot13 marche
get-13-from marche pas

x
y
