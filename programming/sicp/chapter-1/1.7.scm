#lang scheme

(define (good-enough? guess x)
 (< (abs (- (square guess) x)) 0.001))

; using good-enough? as our check
; (sqrt 0.000001) output --> 0.03126 -- expected --> 0.001

; the good-enough? test won't work for small numbers because it checks for a difference < 0.001
; so it will always return true for small inputs

; for large numbers there will be a high chance of timing out or hitting a stack overflow
; or the good-enough requirement will be out of the floating point precision


(define (sqrt-iter guess x)
 (define new-guess (improve guess x))
 (if (new-good-enough? guess new-guess)
  guess
  (sqrt-iter new-guess x)))

(define (improve guess x)
 (average guess (/ x guess)))

(define (average x y)
 (/ (+ x y) 2))

(define (new-good-enough? guess new-guess)
 (< (/ (abs (- guess new-guess)) guess) 0.001))

(define (square x) (* x x))

(define (sqrt x)
 (sqrt-iter 1.0 x))

(sqrt 0.0000001)

; the new good-enough will work better for small numbers
; for large numbers we still run into the issue of precision or timing out
