;; ==============================================================================
;; Lisp utility functions for startup
;; ------------------------------------------------------------------------------

(require 'cl-lib)

(defun my-ensure-package-installed (pkg)
  (unless (package-installed-p pkg)
    (package-install pkg)))

(defun my-extension-regexp (extension)
  (cl-concatenate 'string "\\." extension "\\'"))

(defun my-extension-regexps (extension-list)
  (mapcar 'my-extension-regexp
          extension-list))

(cl-defun my-auto-mode-regexps (mode extension-list &optional (alist 'auto-mode-alist))
  (mapcar
   (lambda (extension)
     (add-to-list alist
                  (cons extension mode)))
   extension-list))

(defun my-auto-mode-extensions (mode extension-list)
  (my-auto-mode-regexps
    mode
    (my-extension-regexps extension-list)
    'auto-mode-alist))

;; Auto minor mode

(defun my-auto-minor-mode-extensions (mode extension-list)
  (my-auto-mode-regexps
    mode
    (my-extension-regexps extension-list)
    'auto-minor-mode-alist))
