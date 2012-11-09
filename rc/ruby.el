;; ==============================================================================
;; Ruby
;; ------------------------------------------------------------------------------

(require 'ruby-mode)

(add-to-list 'auto-mode-alist '("\\.rb$" . ruby-mode))
(add-to-list 'auto-mode-alist '("^Capfile$" . ruby-mode))