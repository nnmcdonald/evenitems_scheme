#lang scheme
; evenitems.scm
; Nathaniel McDonald
; 4/28/18
; For CSCE 331 assignment 7

(define (len xs)
  (if (null? xs)
      0
      (+ 1 (len (cdr xs)))
      )
  )

(define (evenitems xs)
  (if (> (len xs) 0)
    (if (> (len xs) 1)
        (if (= (len xs) 2)
            (cons (car xs) '())
            (cons (car xs) (evenitems (cdr (cdr xs))))
    )
    (cons (car xs) '())
    )
    '()
 ))