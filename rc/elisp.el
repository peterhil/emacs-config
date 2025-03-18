;; ==============================================================================
;; Lisp utility functions for startup
;; ------------------------------------------------------------------------------

(require 'cl-lib)


(defun xr (extension)
  "Extension regexp starting with a dot and ending on line ending,
you provide the regexp in between"
  (format "\\.%s\\'" extension))


(defun extension-regexps (extension-list)
  "Create a list of extension regexps from provided extension
list. Note that they can contain regexps, see xr for more info"
  (mapcar 'xr extension-list))


(cl-defun my-auto-mode-regexps (mode extension-list &optional (alist 'auto-mode-alist))
  (mapcar
   (lambda (extension)
     (add-to-list alist
                  (cons extension mode)))
   extension-list))


(defun my-auto-mode-extensions (mode extension-list)
  (my-auto-mode-regexps
   mode
   (extension-regexps extension-list)
   'auto-mode-alist))


(defun my-auto-minor-mode-extensions (mode extension-list)
  (my-auto-mode-regexps
   mode
   (extension-regexps extension-list)
   'auto-minor-mode-alist))


(defun my-disable-electric-indent ()
  (set (make-local-variable 'electric-indent-chars) nil))
