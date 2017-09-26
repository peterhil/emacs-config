;; ==============================================================================
;; Ruby
;; ------------------------------------------------------------------------------

(require 'ruby-mode)

(my-auto-load-regexps
 'ruby-mode
 '("\\.rb\\'"
   "^Capfile$"))

;; Disable adding coding system magic comment - http://stackoverflow.com/a/6454077
;; # -*- coding: utf-8 -*-
(setq ruby-insert-encoding-magic-comment nil)


;; ==============================================================================
;; Cucumber
;; ------------------------------------------------------------------------------

(require 'feature-mode)
(add-to-list 'auto-mode-alist '("\\.feature\\'" . feature-mode))

(require 'haml-mode)
(add-to-list 'auto-mode-alist '("\\.hamlc\\?\\'" . haml-mode))
