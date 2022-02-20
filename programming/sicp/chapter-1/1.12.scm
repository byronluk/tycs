;             1
;           1   1
;         1   2   1
;       1   3   3   1
;     1   4   6    4  1
;   1   5  10   10   5  1
; 1   6  15   20   15  6  1

(define (get-position-in-pascal-triangle row column)
  (cond ((or (= column 1) (= column row)) 1)
        ((= row 1) 1)
        (else (+
               (get-position-in-pascal-triangle (- row 1) (- column 1))
               (get-position-in-pascal-triangle (- row 1) column)))
  ))

(get-position-in-pascal-triangle 2 1) ; 1

(get-position-in-pascal-triangle 7 3) ; 15
(get-position-in-pascal-triangle 7 4) ; 20
(get-position-in-pascal-triangle 7 5) ; 15

(get-position-in-pascal-triangle 8 4) ; 35
