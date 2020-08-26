;; ==============================================================================
;; Coffee-script
;; ------------------------------------------------------------------------------

(use-package "coffee-mode"
  :mode
  (
    "\\.coffee\\'"
    "^Cakefile$"
    )
  :config
  (set (make-local-variable 'tab-width) 2))
