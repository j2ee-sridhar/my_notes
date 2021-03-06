(define (square-tree tree)
  (if (null? tree)
      ()
      (map (lambda (x)
             (if (pair? x)
                 (square-tree x)
                 (square x)))
           tree)))

(square-tree (list 1 (list 2 (list 3 4) 5) (list 6 7)))
