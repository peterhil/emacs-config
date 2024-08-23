;; ==============================================================================
;; PHP mode
;; ------------------------------------------------------------------------------

(use-package php-mode
  :mode
  "\\.php\\'"
  "\\.inc\\'"
  :config (autoload 'php-mode "php-mode" "Major mode for editing php code." t))
