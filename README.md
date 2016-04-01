`#lang` agile
===

Finally, the language for [agile](http://agilemanifesto.org/principles.html) software development.

- Concise, unambiguous [syntax](http://docs.racket-lang.org/reference/syntax.html)
- Time-tested suite of primitive [datatypes](http://docs.racket-lang.org/reference/data.html)
- [Syntax tools](http://docs.racket-lang.org/syntax/Parsing_Syntax.html) to meet changing requirements
- Fully compatible with the [Racket](http://docs.racket-lang.org) programming language and [build tools](http://docs.racket-lang.org/raco/index.html)

Agile programs start with `#lang agile`. The rest is up to you.

```racket
    #lang agile

    (begin-for-syntax (define-syntax-class principle
      #:attributes (message)
      (pattern (word*:id ...)
       #:attr message #'(word* ...))))

    (define-syntax make-manifesto
      (syntax-parser
       [(_ p*:principle ...)
        #:with (i* ...)
          (for/list ([p (in-list (syntax-e #'(p* ...)))]
                     [i (in-naturals 1)])
            i)
        #'(lambda (n)
            (case n
             [(i*) 'p*.message]
             ...
             [else '(Responding to change over following a plan)]))]))

    (define agile
      (make-manifesto
       [satisfy the customer]
       [welcome changing requirements]
       [deliver working software]
       [work together daily]
       [support and trust]
       [face-to-face conversation]
       [working software is the primary measure of progress]
       [sustainable development]
       [attention to excellence]
       [simplicity is essential]
       [self-organizing teams]
       [reflect tune adjust]))

    (agile 12)
    ;; '(reflect tune adjust)
```
