(defmodule gn.pangolayout
  (export all))

;; XXX untested!
(defun set-text (sender layout text font-description)
  (gtk:cmd sender
           '()
           'GN_pango_layout_set_text
           `(,layout ,text ,font-description)))
