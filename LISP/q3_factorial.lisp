(defun factorial (n)
  (if (= n 0) 1
      (* n (factorial (- n 1))) 
  ) 
)
(write "enter the  number : ")
(terpri)
(format t "Result :  ~D"(factorial(read)))
