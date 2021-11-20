;; ==============================================================================
;; Fennel mode
;; ------------------------------------------------------------------------------

(use-package "fennel-mode"
  :load-path "site-lisp/fennel-mode"
  :ensure nil
  :config
  (add-to-list 'auto-mode-alist '("\\.fnl\\'" . fennel-mode)))
