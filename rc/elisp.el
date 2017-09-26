;; ==============================================================================
;; Lisp utility functions for startup
;; ------------------------------------------------------------------------------

(require 'cl)

(defun my-extension-regexp-list (extension-list)
  (mapcar
   (lambda (extension)
     (cl-concatenate 'string "\\." extension "\\'"))
   extension-list))

(defun my-assign-extensions (mode extension-list)
  (mapcar
   (lambda (extension)
     (add-to-list 'auto-mode-alist (cons extension mode)))
   extension-list))
