(define (improve guess x)
  (/ (+ (/ x (* guess guess)) (* 2 guess)) 3))

(define (good-enough? guess new-guess)
 (< (/ (abs (- guess new-guess)) guess) 0.001))

(define (cube-iter guess x)
 (define new-guess (improve guess x))
 (if (good-enough? guess new-guess)
  guess
  (cube-iter new-guess x)))

(define (cube-root x)
 (cube-iter 1.0 x))

(cube-root 8)

(cube-root 64) ; 4
(cube-root 27) ; 3
(cube-root 8) ; 2
(cube-root 0.001) ; 0.1
