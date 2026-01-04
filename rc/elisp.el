;; ==============================================================================
;; Lisp utility functions for startup
;; ------------------------------------------------------------------------------

(require 'cl-lib)


(defun xr (extension)
  "Handy file extension regexp where you provide just the file EXTENSION.

The regexp will start with a dot and end on line ending,
and you provide the EXTENSION in between as in (xr \"txt\")"
  (format "\\.%s\\'" extension))


;; https://github.com/daut/dotfiles/blob/master/.emacs.d/init.el
(defun daut/display-startup-time ()
  "Display Emacs load time and garbage collections."
  (message "Emacs loaded in %s with %d garbage collections."
           (format "%.2f seconds"
                   (float-time
                    (time-subtract after-init-time before-init-time)))
           gcs-done))


(defun extension-regexps (extension-list)
  "Create a list of extension regexps from the provided EXTENSION-LIST.
Note that they can contain regexps, see xr for more info."
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
