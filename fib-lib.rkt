#lang racket

(provide fib fibonacci)

;; Recently (about 30years ago), I learned the concept of tail recursion
;; I combined my knowledge of tail recursion with AI to generate the beautiful code
;; you see below.  Hoping someone can review and critique this function
(define (fib n)
  (cond
    [(= n 0) 0]
    [(= n 1) 1]
    [else (+ (fib (sub1 n))
             (fib (sub1 (sub1 n))))]))

;; Alias for naming consistency with BSL code
(define (fibonacci n) (fib n))

(module+ test
  (require rackunit)
  (check-equal? (fib 0) 0)
  (check-equal? (fib 1) 1)
  (check-equal? (fib 10) 55)
  (check-equal? (fibonacci 10) 55))
