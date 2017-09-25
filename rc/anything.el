;; ==============================================================================
;; Anything - a "spotlight" for Emacs
;; ------------------------------------------------------------------------------

(use-package "anything")
(use-package "anything-config"
  :commands (anything)
  :bind ("C-x a n" . anything-mini)
  :config
  (anything-imenu))
