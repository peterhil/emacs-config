;; ==============================================================================
;; Use-package
;; ------------------------------------------------------------------------------

;; Use-package is a macro to lazily initialize, require and configure packages
;; https://github.com/jwiegley/use-package

;; (add-to-list 'load-path (concat user-emacs-directory "site-lisp/use-package"))
(require 'use-package)

(setq
 ;; Make use-package always install missing packages with use-package-always-ensure
 ;; https://github.com/jwiegley/use-package#installing-use-package
 ;; Note! Incompatible with `straight-use-package-by-default`!
 use-package-always-ensure t

 ;; Pinning versions by giving default value for :pin in each use-package:
 ;; use-package-always-pin "melpa"

 ;; Debugging use-package
 use-package-verbose 'errors
 ;; use-package-expand-minimally t
 )
