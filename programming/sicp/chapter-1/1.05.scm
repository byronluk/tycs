; Ben Bitdiddle has invented a test to determine whether the interpreter
; he is faced with is using applicative-order evaluation or normal-order evaluation.
; He defines the following two procedures:

(define (p) (p))
(define (test x y)
  (if (= x 0) 0 y))

; Then he evaluates the expression
(test 0 (p))

; applicative-order evaluation -
; the interpreter will hang indefinitely because it will attempt to evaluate p
; p is indefinitely expanded to itself

; normal-order evaluation -
; the interpreter will output 0
; the expression is expanded to (if (= 0 0) 0 (p))
; p will never be evaluated since it is not necessary