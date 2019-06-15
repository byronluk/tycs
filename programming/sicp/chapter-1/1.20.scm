; Using the substituion method (for normal order), illustrate the process generated
; in evaluating (gcd 206 40) and indicate the remainder operations that are actually
; performed.

(define (gcd a b)
(if (= b 0)
 a
 (gcd b (remainder a b))))

; normal-order
(gcd 206 40)

(if (= 40 0)
206
(gcd 40 (remainder 206 40)))

(if (= (remainder 206 40) 0)
40
(gcd (remainder 206 40) (remainder 40 (remainder 206 40))))

(if (= (remainder 40 (remainder 206 40)) 0)
(remainder 206 40)
(gcd
 (remainder 40 (remainder 206 40))
 (remainder (remainder 206 40) (remainder 40 (remainder 206 40)))))

(if (= (remainder (remainder 206 40) (remainder 40 (remainder 206 40))) 0)
(remainder 40 (remainder 206 40))
(gcd
 (remainder (remainder 206 40) (remainder 40 (remainder 206 40)))
 (remainder
  (remainder 40 (remainder 206 40))
  (remainder (remainder 206 40) (remainder 40 (remainder 206 40))))))

(if (= (remainder (remainder 40 (remainder 206 40))
        (remainder (remainder 206 40) (remainder 40 (remainder 206 40)))) 0)
(remainder (remainder 206 40) (remainder 40 (remainder 206 40))))

(if (= 0 0) (remainder 6 (remainder 40 6)))
(if (= 0 0) (reaminder 6 4))
(if (= 0 0) 2)

; How many remainder operations are actually performed in the normal-order evaluation
; of (gcd 206 40)? In the applicative-order evaluation?

; normal-order evaluation -- 11 remainder operations are performed
; applicative-order evaluation -- 4 remainder operations are performed

; applicative-order
(gcd 206 40)
(gcd 40 (remainder 206 40))
(gcd 40 6)
(gcd 6 (remainder 40 6))
(gcd 6 4)
(gcd 4 (remainder 6 4))
(gcd 4 2)
(gcd 2 (remainder 4 2))
(gcd 0)
