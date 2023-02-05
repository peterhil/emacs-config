;; ==============================================================================
;; Anything - a "spotlight" for Emacs
;; ------------------------------------------------------------------------------

(use-package anything
  :commands 'anything)

(use-package anything-config
  :load-path "site-lisp/anything-config"
  :ensure nil
  :after (anything)
  :bind ("C-x a n" . anything-mini)
  :commands 'anything-config)
