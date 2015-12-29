(defmodule gn.signal
  (export all))

;; XXX untested!
(defun connect (sender widget-id event)
  (gtk:cmd sender
           '(,widget-id)
           'GN_signal_connect
           `(,event)))
