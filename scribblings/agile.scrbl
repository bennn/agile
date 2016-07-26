#lang scribble/manual

@title[#:tag "top"]{Agile}
@author[@hyperlink["https://github.com/bennn"]{Ben Greenman}]

@defmodulelang[agile]

@codeblock{
  #lang agile

  ....
}

is short for:

@codeblock{
  #lang racket/base
  (require (for-syntax racket/base syntax/parse)
           racket/match racket/list)

  ....
}
