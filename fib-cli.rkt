#lang racket

;; Reuse shared Fibonacci implementation
(require "fib-lib.rkt")

;; Read n from environment variable N
(define n
  (let* ([s (or (getenv "N") "47")] ; default to "47" if N is unset
         [v (string->number s)])
    (cond
      [(and v (integer? v) (>= v 0)) (inexact->exact v)]
      [else (error 'fib-cli (format "Invalid N: ~a" s))])))

(printf "F(~a) = ~a\n" n (fibonacci n))

