(define (good-enough? guess x)
 (< (abs (- (square guess) x)) 0.001))

(define (sqrt-iter guess x)
 (define new-guess (improve guess x))
 (if (new-good-enough? guess new-guess)
  guess
  (sqrt-iter new-guess x)))

(define (improve guess x)
 (/ (+ (/ x (square guess))
     (* 2 guess))
  3))

(define (average x y)
 (/ (+ x y) 2))

(define (new-good-enough? guess new-guess)
 (< (/ (abs (- guess new-guess)) guess) 0.001))

(define (square x) (* x x))

(define (sqrt x)
 (sqrt-iter 1.0 x))

(sqrt 64) ; 4
(sqrt 27) ; 3
(sqrt 8) ; 2
(sqrt 0.001) ; 0.1
