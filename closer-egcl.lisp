;;;; EGCL adapter for the slot introspection and funcallable-instance APIs.
;;;; Copyright (c) 2026 Anthony Green
;;;; Distributed under the repository's MIT-style license (LICENSE.md).

(in-package #:closer-mop)

;; EGCL currently accepts class designators rather than full class metaobjects.
;; Its bootstrap slot API lives in CL-USER. Keep these qualified calls explicit:
;; other implementations must continue to import their own native MOP symbols.

(defun class-slots (class)
  (cl-user::class-slots class))

(defun class-direct-slots (class)
  (cl-user::class-direct-slots class))

(defun slot-definition-name (slot)
  (cl-user::slot-definition-name slot))

(defun slot-definition-initargs (slot)
  (cl-user::slot-definition-initargs slot))

(defun slot-definition-initform (slot)
  (cl-user::slot-definition-initform slot))

(defun slot-definition-allocation (slot)
  (cl-user::slot-definition-allocation slot))

(defun slot-definition-readers (slot)
  (cl-user::slot-definition-readers slot))

(defun slot-definition-writers (slot)
  (cl-user::slot-definition-writers slot))

(defun slot-definition-type (slot)
  (cl-user::slot-definition-type slot))

(defun set-funcallable-instance-function (instance function)
  (egcl-ext:set-funcallable-instance-function instance function))
