;; ==============================================================================
;; CompAny mode - complete anything
;; ------------------------------------------------------------------------------

(use-package company
  :bind (("C-c RET" . company-mode)
         ("C-c M-RET" . global-company-mode)
         ("C-c TAB" . company-complete))
  :config
  (setopt company-idle-delay 0.5))
