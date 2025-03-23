;; ==============================================================================
;; Whitespace
;; ------------------------------------------------------------------------------

(use-package whitespace
  :bind
  ("H-w T" . global-whitespace-toggle-options)
  ("H-w W" . global-whitespace-mode)
  ("H-w t" . whitespace-toggle-options)
  ("H-w w" . whitespace-mode)
  :config
  (setopt show-trailing-whitespace t))
