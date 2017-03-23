(defun arrayLength(arr)
	(cond 
		((null arr) 0)
		(T (+ 1 (arrayLength (cdr arr))))
	)
)
(write (arrayLength '(1 2 3 4 5)))