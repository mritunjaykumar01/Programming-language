(defun deriv (expression x)
      (cond ((atom expression) (deriveatom expression x))
            ((equal (car expression) '+ ) (list '+ (deriv (cadr expression) x) (deriv (caddr expression) x)))
            ((equal (car expression) '- ) (list '- (deriv (cadr expression) x) (deriv (caddr expression) x)))
            ((equal (car expression) '* ) (list '+  (list '* (cadr expression)  (deriv (caddr expression)  x)) (list '* (caddr expression)  (deriv  (cadr expression)  x) )))
            ((equal (car expression) 'exp ) (list '* ( list 'exp (cadr expression) ) (deriv (cadr expression) x)))
            ((equal (car expression) 'sin) (list '* (list 'cos (cadr expression)) (deriv (cadr expression) x)))
            ((equal (car expression) 'cos) (list '* (list 'sin (cadr expression)) ( list '* '-1 (deriv (cadr expression) x))))
            ((and (equal (car expression) 'log) (atom (cadr expression))) (list '/ 1 (cadr expression))) 
            ((equal (car expression) '/) (list '* (list '/ '-1 (list '* (caddr expression) (caddr expression))) (deriv (caddr expression) x)))
			(T (print "Out of scope."))
 )
 )
 (defun deriveatom (f x)
	(cond
		((numberp f) 0)
		((eq f 'x) 1)
		((eq symbolp f)  0)
	)
)

                        

(terpri)

(write (deriv '(+ (+ (sin x) (cos x)) (exp x)) 'x))

