(defmodule lgtk-util
  (export all))

(defun get-version ()
  (lutil:get-app-version 'lgtk))

(defun get-versions ()
  (++ (lutil:get-versions)
      `(#(lgtk ,(get-version)))))
