(defun rev(L)
	(cond	
		((null L) nil)
		(T (append (reverse(cdr L)) (list (car L))))
	)
)
(terpri)
(write "before")
(terpri)
(terpri)
(terpri)
(write "after")
(terpri)
(write (rev '(1 2 (3 4))))
