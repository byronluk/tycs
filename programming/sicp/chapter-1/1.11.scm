; f(n)=f(n−1)+2f(n−2)+3f(n−3) if n≥3.
; Write a procedure that computes f by means of a recursive process.
; Write a procedure that computes f by means of an iterative process.
(define (f-recursive n)
  (if (< n 3)
      n
      (+
       (f-recursive (- n 1))
       (* 2 (f-recursive (- n 2)))
       (* 3 (f-recursive (- n 3)))
      )
  )
)

(f-recursive 3)
; 2, 1, 0
; 2 + 2(1) + 3(0) = 4

(f-recursive 4)
; 4, 2, 1
; 4 + 2(2) + 3(1) = 11

(f-recursive 5)
; 11, 4, 2
; 11 + 2(4) + 3(2) = 25

(define (f-iter a b c count)
  (if (= count 0)
      c
      (f-iter b c (+ c (* 2 b) (* 3 a)) (- count 1))
      )
  )

(define (f-iterative n)
  (if (< n 3)
      n
      (f-iter 0 1 2 (- n 2)))
  )

(f-iterative 3)
; (f-iter 0 1 2 1)
; (f-iter 1 2 4 0)

(f-iterative 4)
; (f-iter 0 1 2 2)
; (f-iter 1 2 4 1)
; (f-iter 2 4 11 0)

(f-iterative 5)
; (f-iter 0 1 2 3)
; (f-iter 1 2 4 2)
; (f-iter 2 4 11 1)
; (f-iter 4 11 25 0)
