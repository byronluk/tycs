; Using the results of Exercise 1.16 and Exercise 1.17,
; devise a procedure that generates an iterative process for multiplying two integers
; in terms of adding, doubling, and halving and uses a logarithmic number of steps.

(define (* a b)
(fast-multi-iter a b 0))

(define (fast-multi-iter a b sum)
(cond
 ((= b 0)
  sum)
 ((even? b)
  (fast-multi-iter (double a) (halve b) sum))
 (else
  (fast-multi-iter a (- b 1) (+ a sum)))))
