#lang racket/base
(require syntax/parse/define
         (for-syntax racket/base syntax/parse))
(provide (all-from-out racket/base syntax/parse/define)
         (for-syntax (all-from-out racket/base syntax/parse)))
