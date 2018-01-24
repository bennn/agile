#lang racket/base

(provide (all-from-out syntax/parse/define)
         define-simple-id-macro
         define-pattern-expander)

(require syntax/parse syntax/parse/define
         (for-syntax racket/base syntax/transformer))

(define-simple-macro (define-simple-id-macro m:id e:expr)
  (define-syntax m (make-variable-like-transformer #'e)))

(define-simple-macro (define-pattern-expander name:id clause ...)
  (define-syntax name
    (pattern-expander (syntax-parser clause ...))))
