#lang scheme

; Define a procedure that takes three numbers as arguments
; and returns the sum of the squares of the two larger numbers.

(define (square x) (* x x))

(define (sum-of-squares x y)
 (+ (square x) (square y)))

(define (sum-of-squares-largest x y z)
 (cond ((and (<= x y) (<= x z)) (sum-of-squares y z))
       ((and (<= y x) (<= y z)) (sum-of-squares x z))
       (else (sum-of-squares x y))))

(sum-of-squares-largest 1 2 3) ; 13
(sum-of-squares-largest 2 2 4) ; 20
(sum-of-squares-largest 1 6 1) ; 37
(sum-of-squares-largest 2 2 2) ; 8