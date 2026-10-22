;;;; EGCL adapter for the metaobject protocol.
;;;; Copyright (c) 2026 Anthony Green
;;;; Distributed under the repository's MIT-style license (LICENSE.md).

(in-package #:closer-mop)

;; The class, slot-definition, generic-function and method introspection is
;; imported from EGCL-MOP in closer-mop-packages.lisp, so those c2mop: names are
;; EGCL's own functions. EGCL accepts class designators where AMOP takes class
;; metaobjects, and spells an EQL specializer as the list (EQL object), which
;; INTERN-EQL-SPECIALIZER and METHOD-SPECIALIZERS agree on. METHOD-FUNCTION
;; answers AMOP's function of (ARGS NEXT-METHODS), whose CALL-NEXT-METHOD runs
;; NEXT-METHODS in turn; GENERIC-FUNCTION-METHOD-COMBINATION answers a
;; method-combination metaobject EQ to FIND-METHOD-COMBINATION's.

(defun classp (thing)
  (typep thing 'class))

(defun set-funcallable-instance-function (instance function)
  (egcl-ext:set-funcallable-instance-function instance function))
