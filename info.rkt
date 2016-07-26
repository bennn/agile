#lang info
(define collection "agile")
(define deps '("base"))
(define build-deps '("racket-doc" "scribble-lib"))
(define pkg-desc "#lang for agile software development")
(define version "1.1")
(define pkg-authors '(ben))
(define scribblings '(("scribblings/agile.scrbl" () (experimental))))
