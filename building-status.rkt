#lang htdp/bsl

;; =================
;; Data definitions:

;; (@problem 1)
;; You are assigned to develop a system that will classify 
;; buildings in downtown Vancouver based on how old they are. 
;; According to city guidelines, there are three different classification
;; levels: new, old, and heritage.
;;
;; Design a data definition to represent these classification levels. 
;; Call it BuildingStatus.

;; (@htdd BuildingStatus)
;; BuildingStatus is one of
;; - "new"
;; - "old"
;; - "heritage"
;; interp. status of buildings age

(define BS1 "new")
(define BS2 "old")
(define BS3 "heritage")

;; (@dd-template-rules one-of            ;3 cases
;;                     atomic-distinct   ; "new"
;;                     atomic-distinct   ; "old"
;;                     atomic-distinct)  ; "heritage"

(define (fn-for-building-status bs)
  (cond
    [(string=? "new" bs)(...)]
    [(string=? "old" bs)(...)]
    [(string=? "heritage" bs)(...)]))


;; =================
;; Functions:

;; (@problem 2)
;; The city wants to demolish all buildings classified as "old". 
;; You are hired to design a function called demolish? 
;; that determines whether a building should be torn down or not.


;; (@htdf demolish?)
;; (@signature BuildingStatus -> Boolean)
;; produce True if building is classified as "old"

(check-expect (demolish? "old") true)
(check-expect (demolish? "new") false)
(check-expect (demolish? "heritage") false)


;; (define (demolish? bs) false) ;stub

;; (@template-origin BuildingStatus)

;; (@template
;;  (define (demolish? bs)
;;    (cond
;;      [(string=? "new" bs)(...)]
;;      [(string=? "old" bs)(...)]
;;      [(string=? "heritage" bs)(...)])))


(define (demolish? bs)
  (cond
    [(string=? "new" bs) false]
    [(string=? "old" bs) true]
    [(string=? "heritage" bs) false]))
    
