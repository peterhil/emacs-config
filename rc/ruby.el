;; ==============================================================================
;; Ruby
;; ------------------------------------------------------------------------------

(require 'ruby-mode)

(add-to-list 'auto-mode-alist '("\\.rb$" . ruby-mode))
(add-to-list 'auto-mode-alist '("^Capfile$" . ruby-mode))

;; ==============================================================================
;; Cucumber
;; ------------------------------------------------------------------------------

(require 'feature-mode)
(add-to-list 'auto-mode-alist '("\.feature$" . feature-mode))

;; (require 'haml-mode)
;; (add-to-list 'auto-mode-alist '("\\.hamlc?$" . haml-mode))

;; Disable adding coding system magic comment
;; http://stackoverflow.com/a/6454077
;; TODO Update ruby-mode.el
(setq ruby-insert-encoding-magic-comment nil)
