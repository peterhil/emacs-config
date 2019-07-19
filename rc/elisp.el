;; ==============================================================================
;; Lisp utility functions for startup
;; ------------------------------------------------------------------------------

(require 'cl)

(defun my-extension-regexp (extension)
  (cl-concatenate 'string "\\." extension "\\'"))

(defun my-extension-regexps (extension-list)
  (mapcar 'my-extension-regexp
          extension-list))

(defun my-auto-mode-regexps (mode extension-list)
  (mapcar
   (lambda (extension)
     (add-to-list 'auto-mode-alist
                  (cons extension mode)))
   extension-list))

(defun my-auto-mode-extensions (mode extension-list)
  (my-auto-mode-regexps
   mode
   (my-extension-regexps extension-list)))
