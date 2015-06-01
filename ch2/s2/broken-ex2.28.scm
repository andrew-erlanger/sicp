(define (fringe input)
    (cond ((not (list? input))
           input)
          ((= (length input) 1)
           (car input))
          ((null? input) ()))
        (cons (fringe (car input)) 
              (fringe (cdr input)))) 

(define (fringe-2 input)
    (cond ((not (list? input))
           input)
          ((= (length input) 1)
           input)
          ((null? input)
           0)
          (else (cons (fringe (car input))
                (fringe (cdr input))))))

(fringe-2 (list 1))