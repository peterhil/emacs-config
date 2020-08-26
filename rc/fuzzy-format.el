;; ==============================================================================
;; Fuzzy format (auto select tabs or spaces for indent)
;; ------------------------------------------------------------------------------

(use-package fuzzy-format
  :config
  (setq fuzzy-format-default-indent-tabs-mode nil)
  (global-fuzzy-format-mode t))
