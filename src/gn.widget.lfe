(defmodule gn.widget
  (export all))

;; XXX untested!
(defun get-attr (sender widget-id key)
  (gtk:cmd sender
           widget-id
           'GN_widget_set_attr
           `(,key)))
