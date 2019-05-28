; When Alyssa uses the custom "new-if" function --which wraps the cond in a function--
; application-order evaluation is being used and the parameters of "new-if" are evaluated
; so by passing in a recursive call sqrt-iter gets stuck in an infinite loop

; whereas the scheme built-in "if" operator is a special form that behaves by
; evaluating the predicate
; and the evaluates either the consequent or the alternative (only one of the two)

(define (new-if predicate then-clause else-clause)
 (cond (predicate then-clause)
       (else else-clause)))

(define (sqrt-iter guess x)
;(new-if good-enough? guess x)
 (if (good-enough? guess x)
     guess
     (sqrt-iter (improve guess x) x)))

(define (improve guess x)
 (average guess (/ x guess)))

(define (average x y)
 (/ (+ x y) 2))

(define (good-enough? guess x)
 (< (abs (- (square guess) x)) 0.001))

(define (square x) (* x x))

(define (sqrt x)
 (sqrt-iter 1.0 x))

(sqrt 9) ; 3.0009155413138
