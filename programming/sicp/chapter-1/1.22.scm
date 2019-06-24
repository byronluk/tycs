(define (smallest-divisor n)
(find-divisor n 2))

(define (find-divisor n test-divisor)
(cond ((> (square test-divisor) n) n)
 ((divides? test-divisor n) test-divisor)
 (else (find-divisor n (+ test-divisor 1)))))

(define (divides? a b)
(= (remainder b a) 0))

(define (prime? n)
(= n (smallest-divisor n)))

(define (timed-prime-test n)
(newline)
(display n)
(start-prime-test n (runtime)))

(define (start-prime-test n start-time)
(cond ((prime? n) (report-prime (- (runtime) start-time)) #t)
 (else #f)))

(define (report-prime elapsed-time)
(display " *** ")
(display elapsed-time))

; solution
(define (search-for-primes start count)
(define odd-start
 (if (even? start) (+ start 1) start))
(search-iter odd-start count))


(define (search-iter n count)
(define next (+ n 2))
(if (> count 0)
 (if (timed-prime-test n)
  (search-iter next (- count 1))
  (search-iter next count))))

(search-for-primes 1000 3)
(search-for-primes 10000 3)
(search-for-primes 100000 3)
(search-for-primes 1000000 3)

; results don't reveal significant data because the inputs are too small
; to measure the amount of time taken for each prime? call.