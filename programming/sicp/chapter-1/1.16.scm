; Design a procedure that evolves an iterative exponentiation process
; that uses successive squaring and uses a logarithmic number of steps, as does fast-expt.

(define (fast-expt b n)
(cond
 ((= n 0)
  1)
 ((even? n)
  (square (fast-expt b (/ n 2))))
 (else
  (* b (fast-expt b (- n 1))))))

(define (even? n)
(= (remainder n 2) 0))

; solution
(define (fast-expt-iterative b n)
(fast-expt-iter b n 1))

(define (fast-expt-iter base exponent product)
(cond
 ((= exponent 0)
  product)
 ((even? exponent)
  (fast-expt-iter (square base) (/ exponent 2) product))
 (else
  (fast-expt-iter base (- exponent 1) (* base product)))))

(fast-expt-iterative 2 10) ; 1024
(fast-expt-iterative 3 6)  ; 729
(fast-expt-iterative 4 6)  ; 4096
