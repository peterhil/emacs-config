;; ==============================================================================
;; Python-mode
;; ------------------------------------------------------------------------------

(use-package python-mode
  :mode "\\.py\\'"
  :interpreter "python"
  :config
  (setq-default py-shell-name "ipython")
  (setq py-backslashed-continuation-indent 4)
  (setq py-smart-indentation t)
  (setq python-guess-indent t))
