(require 'ert)
 
(defun get-13-char (req-char)
  (let* ((alphabet "abcdefghijklmnopqrstuvwxyz")
     (get-index (lambda  (x) (string-match (format "%s" x) alphabet)))
     (get-13-after-index (lambda (x) (if x (% (+ x 13) 26) nil)))
     (get-13-after-char (lambda (x) (funcall get-13-after-index
                         (funcall get-index x))))
     (get-13-char-after-char (lambda (x) (if (string-match x alphabet) (format "%c"  (elt alphabet (funcall get-13-after-char x)) ) " "))))
    (funcall get-13-char-after-char (format "%c" req-char))))
 
 
(defun get-13-from (word)
  (apply #'concat (mapcar #'get-13-char word)))
 
(get-13-from "uryyb jbeyq")
"hello world"
 
(get-13-from "gung qbrf abg fyrrc juvpu pna rgreany yvr naq va fgenatr rbaf rira qrngu znl qvr")
"that does not sleep which can eternal lie and in strange eons even death may die"